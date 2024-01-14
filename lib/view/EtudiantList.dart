import 'package:appschool/model/etudiantModel.dart';
import 'package:flutter/material.dart';
import '../ModelList.dart';
import 'profile.dart';


class EtudiantList extends StatefulWidget {

  List<Etudiant> etudiants ;
  EtudiantList({required Key key, required this.etudiants}) : super(key: key);
  @override
  _EtudiantListState createState() => _EtudiantListState();
}
class _EtudiantListState extends State<EtudiantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.etudiants.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => IdEtudiant(etudiant: widget.etudiants[index], key: UniqueKey(),)));
                  },
                title: Text(
                    widget.etudiants[index].nom +'   '+widget.etudiants[index].prenom
                ),
                trailing: Checkbox(
                  value: widget.etudiants[index].checked,
                  onChanged: (value) {
                    setState(() {
                      setState(() {
                        widget.etudiants[index].checked=value!;
                      });
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}