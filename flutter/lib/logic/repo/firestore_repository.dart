import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xstar97_web/logic/delegates/firestore_delegate.dart';

class FireStoreRepository implements FireStoreRepoDelegate
{
  var db = Firestore.instance;

  var collectionDev = "dev";
  var documentPortfolio = "portfolio";
  var collectionsProjects = "projects";
  var collectionsSkills = "skills";

  var fieldProjectTitle = "project_title";
  var fieldProjectUrlIcon = "project_url_icon";
  var fieldProjectDescription = "project_description";
  var fieldProjectUrlApp = "project_url_app";
  var fieldProjectUrlGit = "project_url_git";

  var fieldSkillName = "skill_name";

  @override
  Query getProjectsList() {
    return getInitDB().collection(collectionsProjects)
        .orderBy(fieldProjectTitle, descending: false);
  }


  @override
  Query getSkillsList() {
    return getInitDB().collection(collectionsSkills)
        .orderBy(fieldSkillName, descending: false);
  }

  @override
  DocumentReference getInitDB() {
    return db.collection(collectionDev).document(documentPortfolio);
  }

}