// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsc_iiits/Widgets/event_list_past.dart';
import 'package:dsc_iiits/Widgets/event_list_upcoming.dart';

import 'package:dsc_iiits/Widgets/logo.dart';
import 'package:dsc_iiits/models/event.dart';
import 'package:dsc_iiits/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {




  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Event>>.value(
      value: DatabaseService().events,

      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 0,),
            logo,
            SizedBox(height: 10,),
            Expanded(child: SingleChildScrollView(child: EventListUpcoming())),
            Expanded(child: SingleChildScrollView(child: EventListPast())),

//

          ],
        ),

      ),
    );
  }
}
