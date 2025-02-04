# 学科
Department.create!(
    [
        { department: "こども総合学科" },
        { department: "公務員学科" },
        { department: "動物学科" },
        { department: "地域経済" },
        { department: "医療事務" },
        { department: "IT学科" }
    ]
)

# ユーザー
# User.create!(
#     [
#         {name: "test", department: 6, number: "JR2300", password: 123456, re_password: 123456}
#     ]
# )

# 試験種類
ExamType.create!(
    [
        {qualification: "保育士資格"}, #1
        {qualification: "公務員試験（1次試験）"}, #2
        {qualification: "B検"}, #3
        {qualification: "トリマー（2級）"}, #4
        {qualification: "トリマー（1級）"}, #5
        {qualification: "家庭犬トレーナー"}, #6
        {qualification: "動物衛生士（2級）"}, #7
        {qualification: "動物衛生士（1級）"}, #8
        {qualification: "サロントリマー（1級）"}, #9
        {qualification: "愛玩動物2級"}, #10
        {qualification: "日商簿記3級"}, #11
        {qualification: "FP3級"}, #12
        {qualification: "全経工業簿記1級"}, #13
        {qualification: "医療（医科）"}, #14
        {qualification: "医療（歯科）"}, #15
        {qualification: "医療（調剤）"}, #16
        {qualification: "化粧品検定1級"}, #17
        {qualification: "簿記3級"}, #18
        {qualification: "基本情報"}, #19
        {qualification: "応用情報"}, #20
        {qualification: "Ruby（Silver）"}, #21
        {qualification: "Ruby（Gold）"}, #22
        {qualification: "Java3級"} #23
    ]
)

# 田村作業
# 問題
# Problem.create!(
#     [
#         # {学籍番号, 資格ID, 問題, 回答ID}
#         {author: 1, qualification: 21, questions: "Rubyにおける真の値として正しいものをすべて選んでください。", answer: 1}
#     ]
# )

# 選択肢
# Choice.create!(
#     [
#         # {問題ID, 選択肢, 内容}
#         {questions: 1, choice: 1, content: "\"\""},
#         {questions: 1, choice: 2, content: "0"},
#         {questions: 1, choice: 3, content: "false"},
#         {questions: 1, choice: 4, content: "nil"},
#         {questions: 1, choice: 5, content: "\"\", 0"},
#         {questions: 1, choice: 6, content: "false, nil"},
#     ]
# )

# 回答
# Answer.create!(
#     [
#         # {回答, 解説}
#         {answer: "\"\", 0", commentary: "falseとnilは論理的に偽として、それ以外のすべてのオブジェクトは論理的に真として扱われます。"}
#     ]
# )