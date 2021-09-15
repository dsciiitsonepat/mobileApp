// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsc_iiits/Widgets/event_tile.dart';
import 'package:dsc_iiits/models/event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventListUpcoming extends StatefulWidget {
  @override
  _EventListUpcomingState createState() => _EventListUpcomingState();
}

class _EventListUpcomingState extends State<EventListUpcoming> {

  bool isAfterToday(Timestamp timestamp) {
    return DateTime.now().toUtc().isBefore(
      DateTime.fromMillisecondsSinceEpoch(
        timestamp.millisecondsSinceEpoch,
        isUtc: false,
      ).toUtc(),
    );
  }



  @override
  Widget build(BuildContext context) {

    final events = Provider.of<List<Event>>(context) ?? [];

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: events.length,
      itemBuilder: (context,index) {


        return index<events.length && isAfterToday(events[index].timestamp) ? EventTile(event: events[index]) : Container();
      },
    );
  }
}
