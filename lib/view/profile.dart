import 'package:appschool/ModelList.dart';
import 'package:appschool/model/etudiantModel.dart';
import 'package:appschool/view/EtudiantList.dart';
import 'package:flutter/material.dart';
class IdEtudiant extends StatefulWidget {

  late Etudiant etudiant ;
  IdEtudiant({required Key key, required this.etudiant}) : super(key: key);
  @override
  _IdEtudiant createState() => _IdEtudiant();
}
class _IdEtudiant extends  State<IdEtudiant>
{
  late TextEditingController nomController ;
  late TextEditingController prenomController ;
  late TextEditingController emailController ;
  late TextEditingController numTelController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nomController = TextEditingController(text: widget.etudiant.nom);
    prenomController = TextEditingController(text: widget.etudiant.prenom);
    emailController = TextEditingController(text: widget.etudiant.email);
    numTelController = TextEditingController(text: widget.etudiant.numTel);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: profileView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            widget.etudiant.nom = nomController.text;
            widget.etudiant.prenom = prenomController.text;
            widget.etudiant.email = emailController.text;
            widget.etudiant.numTel = numTelController.text;
            Navigator.push(context,MaterialPageRoute(builder: (context) => EtudiantList(etudiants: ModelList.getListEtudiantByEtudiant(widget.etudiant), key: UniqueKey(),)));

          },
        child: Icon(Icons.update),
        backgroundColor: Colors.blue,
      ),// This trailing comma makes auto-formatting nicer for build methods.

    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(height: 50, width: 50 ,child: Icon(Icons.arrow_back_ios, size: 24,color: Colors.black54,), decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.all(Radius.circular(10))),),
              Text('Profiles details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Container(height: 24,width: 24)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0,0 ,50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(),
              ),
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 40, width: 40,
                child: Icon(Icons.add_a_photo, color: Colors.white,),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ))
            ],
          ),
        ),
        Expanded(child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)]
              )
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: nomController,
                          style: TextStyle(color: Colors.white70)
                      ),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          controller: prenomController,
                          style: TextStyle(color: Colors.white70)
                      ),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField
                        (controller: numTelController, style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(controller: emailController, style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),

            ],
          ),
        ))
      ],
    );
  }
}