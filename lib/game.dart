import 'dart:math';
class Game{
  static const maxrandom = 100;
  int? _answer;
  int _count = 0;

  Game(){
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
    this._count++;
  }

  int getcount(){
    return _count;
  }
}