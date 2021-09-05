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
    "answer_index": 3,
  },
  {
    "id": 2,
    "question":
        "Given triangles with sides T1 : 3, 4, 5; T2 : 5, 12, 13; T3 : 6, 8, 10; T4 : 4, 7, 9 and a relation R in set of triangles defined as R = {(Δ1, Δ2) : Δ1 is similar to Δ2}. Which triangles belong to the same equivalence class?",
    "options": ["T1 and T2", "T2 and T3", "T1 and T3", "T1 and T4"],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "Given set A ={1, 2, 3} and a relation R = {(1, 2), (2, 1)}, the relation R will be",
    "options": [
      "reflexive if (1, 1) is added",
      "symmetric if (2, 3) is added",
      "transitive if (1, 1) is added",
      "symmetric if (3, 2) is added"
    ],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Given set A = {a, b, c). An identity relation in set A is",
    "options": [
      "R = {(a, b), (a, c)}",
      "R = {(a, a), (b, b), (c, c)}",
      "R = {(a, a), (b, b), (c, c), (a, c)}",
      "R= {(c, a), (b, a), (a, a)}"
    ],
    "answer_index": 2,
  },
];
