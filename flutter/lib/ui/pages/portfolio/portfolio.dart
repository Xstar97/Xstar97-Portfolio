import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xstar97_web/generated/l10n.dart';
import 'package:xstar97_web/logic/repo/firestore_repository.dart';
import 'package:xstar97_web/ui/pages/portfolio/list_item_skill.dart';
import 'package:xstar97_web/utils.dart';

import 'list_item_project.dart';
import 'project_model.dart';

var utils = Utils();
class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {

  @override
  Widget build(BuildContext context) {

    ButtonBar linksButtonBar = ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new RaisedButton(
          color: Colors.white,
          hoverColor: Colors.grey,
          child: new Text(S.of(context).headerItemGithub),
          onPressed: (){utils.launchURL(Utils.gitHub);},
        ),
        new RaisedButton(
          color: Colors.white,
          hoverColor: Colors.grey,
          child: new Text(S.of(context).headerItemLinkedIn),
          onPressed: (){
          utils.launchURL(Utils.linkedIn);
          },
        ),
      ],
    );

    Widget header = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded( //makes the red row full width
          child: Container(
            color: Colors.black,
            height: 125,
            child: Center(child: Column(
              children: <Widget>[//AppLocalizations.of(context).title()
                Text(S.of(context).title, style: TextStyle(color: Colors.white, fontSize: 50)),
                linksButtonBar
              ],
            )),
          ),
        ),
      ],
    );

    var listSkills = StreamBuilder(
      stream: FireStoreRepository().getSkillsList().snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          case ConnectionState.none:
            return new Text('nothing here...');
          default:
            return new ListView(
              shrinkWrap: true,
              children: snapshot.data.documents.map((
                  DocumentSnapshot document) {
                return ListItemSkill(document);
              }).toList(),
            );
        }
      },
    );

    var listProjects = StreamBuilder(
      stream: FireStoreRepository().getProjectsList().snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          case ConnectionState.none:
            return new Text('nothing here...');
          default:
            return new GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: snapshot.data.documents.map((
                  DocumentSnapshot document) {
                return ListItemProject(document);
              }).toList(),
            );
        }
      },
    );

    Column skillRow = Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),),
        Text(S.of(context).skillsTitle, style: TextStyle(color: Colors.black,fontSize: 25),),
        Padding(padding: const EdgeInsets.all(10.0),),
        listSkills
      ],
    );

    Column aboutSection = Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(25.0),),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(S.of(context).aboutMe, style: TextStyle(color: Colors.black,fontSize: 25),)
          ,),
        Padding(padding: const EdgeInsets.all(10.0),),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(S.of(context).aboutMeDescription, textAlign: TextAlign.center,)
          ,),
        skillRow
      ],
    );

    Column projectSection = Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),),
        Text(S.of(context).projectsTitle, style: TextStyle(color: Colors.black,fontSize: 25),),
        Padding(padding: const EdgeInsets.all(10.0),),
        listProjects
      ],
    );
    Widget body = Flexible(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child:  Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:  Radius.circular(50), topLeft:  Radius.circular(50)),),
          child: Column(
            children: <Widget>[
              aboutSection,
              projectSection
            ],
          ),
        ),
      ),
    );

    return Scaffold(
        body:  Column(
          children: <Widget>[
            header,
            body
          ],
        )
    );
  }
}