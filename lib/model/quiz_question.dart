class QuizQuestion{
 const  QuizQuestion(this.text,this.answers);
  final text;
  final List<String> answers;
  //now we wanna  create another list and copy the list of answers there
//and than shuffle the list
//we do it because every correct answer in original list is correct and if we shuffle it knowing answer  is impossible
List<String> getShuffledAnswers(){
 final Shuffledlist=List.of(answers);
 Shuffledlist.shuffle();
 return Shuffledlist;

}
}