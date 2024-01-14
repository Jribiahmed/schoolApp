import 'package:appschool/view/EtudiantList.dart';
import 'package:flutter/material.dart';

import '../ModelList.dart';
class ClasseList extends StatefulWidget {
  @override
  _ClasseListState createState() => _ClasseListState();
}

class _ClasseListState extends State<ClasseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ModelList.classes.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => EtudiantList(etudiants: ModelList.classes[index].etudiants, key: UniqueKey(),)));
                  },
                title: Text(
                    ModelList.classes[index].niveau
                ),

                leading: CircleAvatar(
                  child: Text(
                      "1"
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}