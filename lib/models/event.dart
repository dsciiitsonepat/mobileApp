// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  final String desc;
  final String eventID;
  final String media;
  final String name;
  final Timestamp timestamp;

  Event({this.desc='', this.eventID='',this.media='',this.name='',this.timestamp});



}