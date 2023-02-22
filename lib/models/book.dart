import 'package:cloud_firestore/cloud_firestore.dart';

class BookModel {
  String id;
  String name;
  String author;
  int length;
  Timestamp dateCompleted;

  BookModel({
    required this.id,
    required this.name,
    required this.length,
    required this.dateCompleted,
  });

  BookModel.fromDocumentSnapshot({DocumentSnapshot doc}) {
    id = doc.documentID;
    name = doc.data["name"];
    author = doc.data["author"];
    length = doc.data["length"];
    dateCompleted = doc.data['dateCompleted'];
  }
}