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

 
// Named Parameter with required annotation
  Question({required this.questionText, required this.questionAnswer});


// Positional Parameter
  // Question(String questionText, bool questionAnswer){
  //   this.questionText = questionText;
  //   this.questionAnswer = questionAnswer;
  // }\


  // Question({required String q, required bool a}){
  //   questionText = q;
  //   questionAnswer = a;
  // }
}