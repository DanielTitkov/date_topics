.PHONY: generate_topics
generate_topics:
	cd scripts && pipenv run python generate_topic_data.py