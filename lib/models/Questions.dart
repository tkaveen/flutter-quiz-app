class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Let R be a relation on the set L of lines defined by l1 R l2 if l1 is perpendicular to l2, then relation R is",
    "options": [
      "reflexive and symmetric",
      "symmetric and transitive",
      "equivalence relation",
      "symmetric"
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "hjghjghj",
    "options": ["apple", "apple", "apple", "apple"],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "saewrwerdasd",
    "options": ["apple", "apple", "apple", "apple"],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "wqweqweqweqwe",
    "options": ["apple", "apple", "apple", "apple"],
    "answer_index": 1,
  },
];
