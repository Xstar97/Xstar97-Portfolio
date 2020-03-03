//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xstar97_web/generated/l10n.dart';
import 'package:xstar97_web/logic/repo/firestore_repository.dart';
import 'package:xstar97_web/utils.dart';


//var fireRepo = FireStoreRepository();
var utils = Utils();
class ProjectModel{
  String name;
  String img;
  String description;
  String appUrl;
  String githubUrl;
  ProjectModel(this.name,this.img, this.description,this.appUrl,this.githubUrl);
}
/*
class ListItemProject extends StatelessWidget{
  ListItemProject(this.document);
  final DocumentSnapshot document;
  @override
  Widget build(BuildContext context) {

    var title = document[fireRepo.fieldProjectTitle];
    var icon = document[fireRepo.fieldProjectUrlIcon];
    var description = document[fireRepo.fieldProjectDescription];
    var app = document[fireRepo.fieldProjectUrlApp];
    var git = document[fireRepo.fieldProjectUrlGit];

    var appBool = app != null && app.isNotEmpty && app !="";
    var gitBool = git != null && git.isNotEmpty && git !="";
    void urlApp(){
      utils.launchURL(app);
    }
    void urlGit(){
      utils.launchURL(git);
    }
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: new InkWell(
        onTap: ()=> null,
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(title, style: TextStyle(color: Colors.white)) ,),
              //Image.asset('assets/images/${model.img}', width: 100,height: 100,),
              Image.network(
                icon,
                width: 200,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child:Text(description, style: TextStyle(color: Colors.white)),
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  new RaisedButton(
                    color: Colors.white,
                    hoverColor: Colors.grey,
                    child: new Text(S.of(context).launchApp),
                    onPressed: appBool ? urlApp : null,
                  ),
                  new RaisedButton(
                    color: Colors.white,
                    hoverColor: Colors.grey,
                    child: new Text(S.of(context).headerItemGithub),
                    onPressed: gitBool ? urlGit : null,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}*/