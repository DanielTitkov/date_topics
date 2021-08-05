import pandas as pd
import pprint
from typing import Union

INDENT = " "*2
SOURCE = "../data/topics.csv"
TOPIC_OUTPUT = "../lib/data/topics.dart"
TAG_OUTPUT = "../lib/data/tags.dart"


def add_tags(topic_groups: list, tags: dict):
    for topic_group in topic_groups:
        for topic in topic_group.get("topics", []):
            for tag in topic.get("tag_ids", []):
                if tag != "":
                    topic["tags"].append(tags[tag])

    return topic_groups


def parse_data(source: str) -> Union[list, dict]:
    df = pd.read_csv(source).fillna('')
    topic_groups = []
    tags = {}
    cur_topic_group = {}
    cur_topic = {}
    cur_item = {}
    for row in df.to_dict(orient="records"):
        if row["topicGroup"]:
            cur_topic_group = {
                "id": row["topicGroup"],
                "title": row["topicGroup_title"],
                "description": row["topicGroup_desc"],
                "topics": [],
                "tags": [],
            }
            topic_groups.append(cur_topic_group)
        elif row["topic"]:
            cur_topic = {
                "id": f'{cur_topic_group["id"]}_{row["topic"]}',
                "title": row["topic_title"],
                "description": row["topic_desc"],
                "allow_random": "true" if row["topic_allowRandom"] == 1 else "false",
                "allow_player": "true" if row["topic_allowPlayer"] == 1 else "false",
                "tag_ids": [t.strip() for t in row["topic_tags"].split(",")],
                "image": row["topic_image"],
                "items": [],
                "tags": [],
            }
            if cur_topic_group:
                cur_topic_group["topics"].append(cur_topic)
        elif row["item"]:
            cur_item = {
                "id": f'{cur_topic["id"]}_{row["item"]}',
                "title": row["item_title"],
                "body": row["item_body"],
                "order_index": row["item_orderIndex"],
            }
            if cur_topic:
                cur_topic["items"].append(cur_item)
        elif row["tag"]:
            tag = {
                "id": row["tag"],
                "title": row["tag_title"],
                "description": row["tag_desc"],
            }
            tags[row["tag"]] = tag
        else:
            continue

    topic_groups = add_tags(topic_groups, tags)

    return topic_groups, tags


def item_to_string(d: dict) -> str:
    args = [
        f'id: "{d["id"]}"',
        f'body: "{d["body"]}"',
    ]
    if d["title"] != "":
        args.append(f'title: "{d["title"]}"')

    return "Item(" + ", ".join(args) + ",),"


def tag_to_string(d: dict) -> str:
    args = [
        f'id: "{d["id"]}"',
        f'title: "{d["title"]}"',
    ]
    if d["description"] != "":
        args.append(f'description: "{d["description"]}"')

    return "Tag(" + ", ".join(args) + ",),"


def topic_to_string(d: dict) -> str:
    args = [
        f'id: "{d["id"]}"',
        f'title: "{d["title"]}"',
        f'allowRandom: {d["allow_random"]}',
        f'allowPlayer: {d["allow_player"]}',
    ]
    if d["description"] != "":
        args.append(f'description: "{d["description"]}"')

    if d["image"] != "":
        args.append(f'image: "{d["image"]}"')

    items = [INDENT*3 + item_to_string(item) for item in d["items"]]
    items_str = "\n".join(items)

    tags = [INDENT*3 + tag_to_string(tag) for tag in d["tags"]]
    tags_str = "\n".join(tags)

    args.append(f'items: [\n{items_str}\n{INDENT*2}]')
    args.append(f'tags: [\n{tags_str}\n{INDENT*2}]')

    return "Topic(" + ", ".join(args) + ",),"


def topic_group_to_string(d: dict) -> str:
    args = [
        f'id: "{d["id"]}"',
        f'title: "{d["title"]}"',
    ]
    if d["description"] != "":
        args.append(f'description: "{d["description"]}"')

    topics = [INDENT*2 + topic_to_string(topic) for topic in d["topics"]]
    topics_str = "\n".join(topics)
    args.append(f'topics: [\n{topics_str}\n{INDENT}]')

    return "TopicGroup(" + ", ".join(args) + ",),"


def data_to_dart(data: list) -> str:
    preamble = "import 'package:date_topics/domain/domain.dart';\n\n"
    topic_groups = [INDENT + topic_group_to_string(tg)+"\n" for tg in data]
    return preamble + "final List<TopicGroup> topicGroupsData = [\n" + "".join(topic_groups) + "];"


def tags_to_dart(tags: dict) -> str:
    preamble = "import 'package:date_topics/domain/domain.dart';\n\n"
    tags = [INDENT + tag_to_string(t)+"\n" for t in tags.values()]
    return preamble + "final List<Tag> tagsData = [\n" + "".join(tags) + "];"


if __name__ == "__main__":
    pp = pprint.PrettyPrinter(indent=2, compact=True)

    topic_groups, tags = parse_data(SOURCE)

    # pp.pprint(topic_groups)
    # pp.pprint(tags)

    print("topic generation done")

    with open(TOPIC_OUTPUT, "w") as f:
        f.write(data_to_dart(topic_groups))

    print("successfully written to", TOPIC_OUTPUT)

    with open(TAG_OUTPUT, "w") as f:
        f.write(tags_to_dart(tags))

    print("successfully written to", TAG_OUTPUT)
