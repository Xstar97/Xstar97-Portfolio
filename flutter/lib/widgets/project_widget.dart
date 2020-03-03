import 'package:adityagurjar/models/project_model.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
class ProjectWidget extends StatelessWidget {
  final Project _project;
  final double _bottomPadding;
  ProjectWidget(this._project,this._bottomPadding );

  void onProjectClick(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext alert){
          return AlertDialog(
            title: Center(child: Text(_project.name),),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("click 'app' for live preview\nclick 'github' to see the code", textAlign: TextAlign.center,),
                Row (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("app"),
                          onPressed: () {
                            if(_project.app !=null) {
                              html.window.open(_project.app, 'app');
                              Navigator.of(alert).pop();
                            } else{
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text("Link unavailable"),
                              ));
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("Close"),
                          onPressed: (){
                            Navigator.of(alert).pop();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("github"),
                          onPressed: (){
                            if(_project.git !=null) {
                              html.window.open(_project.git, 'git');
                              Navigator.of(alert).pop();
                            } else{
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text("Link unavailable"),
                              ));
                            }
                          },
                        ),
                      )
                    ]
                )
              ],
            )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,_bottomPadding),
      child:InkWell(
        onTap: ()=> onProjectClick(context),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _project.image,
                    width: width * .25,
                    height: width*.25,
                  )),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_project.name,
                          style: Theme.of(context).textTheme.title),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
