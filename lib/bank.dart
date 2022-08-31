import 'package:quizzler/question.dart';

class Questionbank {
  int _question_num = 0;
  List<Question> _bank = [
    Question(quest: 'In a deck of cards, the king has a mustache.', ans: false),
    Question(quest: 'A dog sweats by panting its tongue.', ans: false),
    Question(
        quest: 'The largest living frog is the Goliath frog of West Africa.',
        ans: true),
    Question(quest: 'An ant can lift 1,000 times its body weight.', ans: false),
    Question(quest: 'The goat is the national animal of Scotland.', ans: false),
    Question(quest: 'A slug\'s blood is green.', ans: true),
    Question(
        quest: 'A monkey was the first non-human to go into space.',
        ans: false),
    Question(
        quest: 'Sea otters have a favorite rock they use to break open food',
        ans: true),
    Question(quest: 'There are 14 bones in a human foot', ans: false),
    Question(quest: 'The End (Chuti karo)', ans: true)
  ];

  void next() {
    if (_question_num < _bank.length - 1) {
      _question_num++;
    }
  }

  bool nomore() {
    if (_question_num < _bank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestion() {
    return _bank[_question_num].question;
  }

  bool getAnswer() {
    return _bank[_question_num].answer;
  }
}
