import 'package:rxdart/rxdart.dart';

class SplashBloc{

  String title = '';

  BehaviorSubject<String> _subjectTitle;

  SplashBloc({this.title}){
    _subjectTitle = new BehaviorSubject<String>.seeded(this.title);
  }

  ValueStream<String> get counterObservable => _subjectTitle.stream;

  void setTitle(String mTitle){
    _subjectTitle.sink.add(title);
  }

  void dispose(){
    _subjectTitle.close();
  }
}