import 'model/classeModel.dart';
import 'model/etudiantModel.dart';
class ModelList {
  static List<Etudiant> etudiant = [
    Etudiant('mohamed', 'kammoun', '111125', '24444', 'kammunMohamed',false),
    Etudiant('Achraf','Tr', '111125888','254788844','48884877',false)
  ];
  static List<Etudiant> classII1a = [
    Etudiant('m', 'k', '1', '2', 'km',false),
    Etudiant('m1', 'k1', '0', '3', 'km1',false),
    Etudiant('m2', 'k2', '2', '2', 'km4',false),
    Etudiant('m3', 'k3', '3', '2', 'km5',false),
    Etudiant('m4', 'k4', '4', '2', 'km8',false),
    Etudiant('m5', 'k5', '5', '2', 'km9',false),
  ];
  static List<classe> classes = [
    classe(1,"II2d",classII1a),
    classe(2, "ii1A",etudiant)
  ];

  static List<Etudiant> getListEtudiantByLevel(String level) {
    // Find the class with the matching level
    for (classe cl in classes) {
      if (cl.niveau.toLowerCase() == level.toLowerCase()) {
        return cl.etudiants; // Return the list of Etudiant for the found class
      }
    }
    return []; // Return empty list if no class with the given level is found
  }

  static List<Etudiant> getListEtudiantByEtudiant(Etudiant etudiant) {
    // Find the class with the matching level
    for (classe cl in classes) {
      if (cl.etudiants.contains(etudiant)) {
        return cl.etudiants; // Return the list of Etudiant for the found class
      }
    }
    return []; // Return empty list if no class with the given level is found
  }

}