//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:xstar97_web/logic/repo/firestore_repository.dart';

//var fireRepo = FireStoreRepository();

class SkillModel{
  String name;
  SkillModel(this.name);
}
/*class ListItemSkill extends StatelessWidget{
  ListItemSkill(this.document);
  final DocumentSnapshot document;
  @override
  Widget build(BuildContext context) {
    var name = document[fireRepo.fieldSkillName];
    return Center(child:  Text(name),);
  }
}*/