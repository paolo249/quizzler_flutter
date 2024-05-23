class Question {
  // Dart doesn't use private, public, protected keywords
  // because it provides privacy at the library level, not the class level. 
  String questionText;
  bool questionAnswer;

  // Usual Java constructor
  // Question(String questionText, bool questionAnswer) {
  //   this.questionText = questionText;
  //   this.questionAnswer = questionAnswer;

  // }

  // Dart constructor
  Question(this.questionText, this.questionAnswer);

}