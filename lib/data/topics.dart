import 'package:date_topics/domain/domain.dart';

final List<TopicGroup> topicGroupsData = [
  TopicGroup(
    id: "aron1",
    title: "Вопросы Арона",
    description: "Вопросы чтобы лучше узнать друг друга",
    topics: [
      Topic(
        id: "aron1_aron_classic",
        title: "Классическая процедура Арона",
        allowRandom: false,
        allowPlayer: true,
        description: "36 вопросов",
        image: "icons8-bookmark-50.png",
        items: [
          Item(
            id: "aron1_aron_classic_q1",
            body:
                "Если бы ты мог пригласить кого-нибудь на ужин (близкого человека, умершего родственника, знаменитость), кого бы ты выбрал?",
            title: "Вопрос 1",
          ),
          Item(
            id: "aron1_aron_classic_q2",
            body: "Хотел бы ты быть знаменитым? В чем?",
            title: "Вопрос 2",
          ),
          Item(
            id: "aron1_aron_classic_q3",
            body:
                "Прежде чем сделать звонок, ты репетируешь свою реплику? Почему?",
            title: "Вопрос 3",
          ),
          Item(
            id: "aron1_aron_classic_q4",
            body: "Каким был бы для тебя «идеальный день»?",
            title: "Вопрос 4",
          ),
          Item(
            id: "aron1_aron_classic_q5",
            body:
                "Когда ты в последний раз пел в одиночестве? А для кого-нибудь другого?",
            title: "Вопрос 5",
          ),
          Item(
            id: "aron1_aron_classic_q6",
            body:
                "Если бы ты могли прожить до 90 лет и в последние 60 лет сохранить либо разум, либо тело 30-летнего, что бы ты выбрал?",
            title: "Вопрос 6",
          ),
          Item(
            id: "aron1_aron_classic_q7",
            body: "У тебя есть тайное предчувствие того, как ты умрешь?",
            title: "Вопрос 7",
          ),
          Item(
            id: "aron1_aron_classic_q8",
            body:
                "Назови три черты, которые, по-твоему, есть и у тебя, и у твоего партнера.",
            title: "Вопрос 8",
          ),
          Item(
            id: "aron1_aron_classic_q9",
            body: "За что ты испытываешь наибольшую благодарность?",
            title: "Вопрос 9",
          ),
          Item(
            id: "aron1_aron_classic_q10",
            body:
                "Если бы ты мог, что бы ты изменил в том, как тебя воспитывали?",
            title: "Вопрос 10",
          ),
          Item(
            id: "aron1_aron_classic_q11",
            body:
                "За 4 минуты расскажи партнеру историю твоей жизни настолько подробно, насколько это возможно.",
            title: "Вопрос 11",
          ),
          Item(
            id: "aron1_aron_classic_q12",
            body:
                "Если бы ты мог проснуться завтра, обладая каким-то умением или способностью, что бы это было?",
            title: "Вопрос 12",
          ),
          Item(
            id: "aron1_aron_classic_q13",
            body:
                "Если бы магический кристалл мог открыть тебе правду, о чем бы ты хотел узнать?",
            title: "Вопрос 13",
          ),
          Item(
            id: "aron1_aron_classic_q14",
            body:
                "Есть ли что-то, что ты уже давно мечтаешь сделать? Почему ты еще не сделал этого?",
            title: "Вопрос 14",
          ),
          Item(
            id: "aron1_aron_classic_q15",
            body: "Самое большое достижение в твоей жизни?",
            title: "Вопрос 15",
          ),
          Item(
            id: "aron1_aron_classic_q16",
            body: "Что в дружбе для тебя наиболее ценно?",
            title: "Вопрос 16",
          ),
          Item(
            id: "aron1_aron_classic_q17",
            body: "Какое твое самое дорогое воспоминание?",
            title: "Вопрос 17",
          ),
          Item(
            id: "aron1_aron_classic_q18",
            body: "А самое ужасное воспоминание?",
            title: "Вопрос 18",
          ),
          Item(
            id: "aron1_aron_classic_q19",
            body:
                "Если бы ты знал, что умрешь через год, что бы ты изменил в том, как ты живете? Почему?",
            title: "Вопрос 19",
          ),
          Item(
            id: "aron1_aron_classic_q20",
            body: "Что для тебя значит дружба?",
            title: "Вопрос 20",
          ),
          Item(
            id: "aron1_aron_classic_q21",
            body: "Какую роль любовь и нежность играют в твоей жизни?",
            title: "Вопрос 21",
          ),
          Item(
            id: "aron1_aron_classic_q22",
            body:
                "По очереди называй партнеру его положительные черты (обменяйтесь пятью характеристиками).",
            title: "Вопрос 22",
          ),
          Item(
            id: "aron1_aron_classic_q23",
            body: "В твоей семье отношения теплые и близкие?",
            title: "Вопрос 23",
          ),
          Item(
            id: "aron1_aron_classic_q24",
            body: "Что ты чувствуешь в связи с твоими отношениями с матерью?",
            title: "Вопрос 24",
          ),
          Item(
            id: "aron1_aron_classic_q25",
            body:
                "Составьте каждый по три утверждения, верных для вас обоих. Например, «Мы оба сейчас чувствуем…»",
            title: "Вопрос 25",
          ),
          Item(
            id: "aron1_aron_classic_q26",
            body:
                "Продолжите фразу: «Я бы хотел, чтобы был кто-то, с кем можно разделить…»",
            title: "Вопрос 26",
          ),
          Item(
            id: "aron1_aron_classic_q27",
            body:
                "Если ты собирался стать близким другом для твоего партнера, что бы ты ему рассказал прямо сейчас?",
            title: "Вопрос 27",
          ),
          Item(
            id: "aron1_aron_classic_q28",
            body:
                "Расскажи партнеру, что тебе нравится в нем; говори прямо, произноси вещи, которые ты не мог бы сказать случайному знакомому.",
            title: "Вопрос 28",
          ),
          Item(
            id: "aron1_aron_classic_q29",
            body:
                "Поделись с парт­нером неприятной ситуацией или смущающим моментом из твоей жизни.",
            title: "Вопрос 29",
          ),
          Item(
            id: "aron1_aron_classic_q30",
            body:
                "Когда ты в последний раз плакал при ком-нибудь? А в одиночестве?",
            title: "Вопрос 30",
          ),
          Item(
            id: "aron1_aron_classic_q31",
            body:
                "Расскажи своему партнеру, что ты уже сейчас ценишь в нем (в ней).",
            title: "Вопрос 31",
          ),
          Item(
            id: "aron1_aron_classic_q32",
            body:
                "По-твоему, какая тема слишком серьезна, чтобы шутить об этом?",
            title: "Вопрос 32",
          ),
          Item(
            id: "aron1_aron_classic_q33",
            body:
                "Если бы ты должен был умереть сегодня до конца дня, ни с кем не поговорив, о чем несказанном ты бы больше всего жалел? Почему ты еще не сказал этого?",
            title: "Вопрос 33",
          ),
          Item(
            id: "aron1_aron_classic_q34",
            body:
                "Твой дом со всем имуществом загорелся. После спасения близких и домашних животных у тебя есть время, чтобы забежать в дом и спасти еще что-то. Что бы ты взял? Почему?",
            title: "Вопрос 34",
          ),
          Item(
            id: "aron1_aron_classic_q35",
            body:
                "Смерть кого из членов твоей семьи расстроила бы тебя больше всего? Почему?",
            title: "Вопрос 35",
          ),
          Item(
            id: "aron1_aron_classic_q36",
            body:
                "Поделись личной проблемой и спроси партнера, как он бы справился с ней. Затем спроси, что он думает о твоих чувствах по поводу этой проблемы.",
            title: "Вопрос 36",
          ),
        ],
        tags: [
          Tag(
            id: "personal",
            title: "Личное",
            description: "Вопросы о личном",
          ),
          Tag(
            id: "psychology",
            title: "Психология",
            description: "То что касается нашей психики",
          ),
        ],
      ),
    ],
  ),
  TopicGroup(
    id: "mundane",
    title: "Профанное",
    description: "Вопросы на бытовые темы",
    topics: [
      Topic(
        id: "mundane_m1",
        title: "Вопросы о быте",
        allowRandom: true,
        allowPlayer: true,
        description:
            "Ну что-то такое. Потом нормально сделаю. Сейчас надо логику настроить. ",
        items: [
          Item(
            id: "mundane_m1_q1",
            body: "Что ты планируешь делать на следующей неделе?",
          ),
          Item(
            id: "mundane_m1_q2",
            body: "Что тебе нравится и не нравится в свиданиях?",
          ),
          Item(
            id: "mundane_m1_q3",
            body: "Чем ты славишься среди своих друзей?",
          ),
          Item(
            id: "mundane_m1_q4",
            body:
                "Какой стереотип о мужчинах / женщинах ты ненавидишь больше всего?",
          ),
          Item(
            id: "mundane_m1_q5",
            body: "Что заставляет тебя нервничать?",
          ),
          Item(
            id: "mundane_m1_q6",
            body: "Что может мгновенно вызвать в тебе отторжение к человеку?",
          ),
          Item(
            id: "mundane_m1_q7",
            body: "С каким заблуждением о себе ты сталкиваешься чаще всего?",
          ),
          Item(
            id: "mundane_m1_q8",
            body: "Какое у тебя самое яркое воспоминание из детства?",
          ),
          Item(
            id: "mundane_m1_q9",
            body: "Ты жаворонок или сова?",
          ),
          Item(
            id: "mundane_m1_q10",
            body: "Что ты любишь на ужин/завтрак?",
          ),
          Item(
            id: "mundane_m1_q11",
            body: "Ты любишь больше кошек или собак?",
          ),
        ],
        tags: [
          Tag(
            id: "personal",
            title: "Личное",
            description: "Вопросы о личном",
          ),
        ],
      ),
    ],
  ),
];
