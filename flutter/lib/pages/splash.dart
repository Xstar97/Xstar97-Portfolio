import 'package:adityagurjar/generated/l10n.dart';
import 'package:adityagurjar/main.dart';
import 'package:adityagurjar/utils.dart';
import 'package:flutter/material.dart';

var utils = Utils();
class SplashPage extends StatefulWidget {
  var title = "hello world";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double opacity = 1.0;

  changeOpacity() {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
    });
  }

  changeTitle(){
    changeOpacity();
    widget.title = S.of(context).title;
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      changeOpacity();
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      changeTitle();
    });
    Future.delayed(Duration(milliseconds: 2500), () {
      changeOpacity();
    });
    Future.delayed(Duration(milliseconds: 3000), () {
      utils.pushReplacePage(context, new MyApp());
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget header = AnimatedOpacity(
        opacity:  opacity,
        duration: Duration(milliseconds: 500),
        child:  Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 50),));

    return Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: header,
        )
    );
  }
}