import 'dart:math';
class Game{
  int? _answer;
  static var myList = <int>[];

  Game([int maxrandom = 100]){
    var r = Random();
    _answer = r.nextInt(maxrandom + 1);
  }

  int doguess(int num){
    if(num == _answer){
      return 0;
    }else if(num > _answer!){
      return 1;
    }else{
      return -1;
    }
  }
  void addcount(){
    myList.add(1);
  }

  int getcount(){
    return myList.length;
  }
}