import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils{

  static const String gitHub = "https://github.com/Xstar97/";
  static const String linkedIn = "https://www.linkedin.com/in/corey-miller-a351781a0/";

  Future<Navigator> pushReplacePage(BuildContext context, Object page){
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
  }

  launchURL(String url){
    _launchURL(url);
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}