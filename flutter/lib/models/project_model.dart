import 'package:flutter/material.dart';

class Project{
  String name;
  String image;
  String description;
  String app;
  String git;
  Project({@required this.image,@required this.name,@required this.description, this.app, this.git});
}