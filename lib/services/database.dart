// @dart=2.9



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsc_iiits/models/event.dart';
import 'package:dsc_iiits/models/member.dart';
import 'package:dsc_iiits/screens/events.dart';

class DatabaseService {

//  final String uid;
//  DatabaseService({this.uid});

  //  Collection Reference

  final CollectionReference memberCollection =Firestore.instance.collection("members");
  final CollectionReference eventCollection =Firestore.instance.collection("events");

  List<Member> _memberListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
//      doc.data();
//      print(doc.data());
      return Member(
        name: doc.data['name'] ?? '',

        role: doc.data['role'] ?? '',

      );
    }).toList();

  }

  List<Event> _eventListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
//      doc.data();
//      print(doc.data());
      return Event(
        desc: doc.data['desc'] ?? '',
        eventID: doc.data['eventID'] ?? '',
        media: doc.data['media'] ?? '',
        name: doc.data['name'] ?? '',

        time: doc.data['time'] ,

      );
    }).toList();

  }





  Stream<List<Member>> get members {
    return memberCollection.snapshots()
        .map(_memberListFromSnapshot);
  }

  Stream<List<Event>> get events {
    return eventCollection.snapshots()
        .map(_eventListFromSnapshot);
  }



}




