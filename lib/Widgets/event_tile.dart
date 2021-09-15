//@dart=2.9

import 'package:dsc_iiits/models/event.dart';
import 'package:dsc_iiits/models/member.dart';
import 'package:flutter/material.dart';


class EventTile extends StatelessWidget {

  final Event event;
  EventTile({this.event});

  @override
  Widget build(BuildContext context) {
//    print(member.name);
//    print(member.role);
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(

        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.yellow,
//            backgroundImage: AssetImage('assets/coffee_icon.png'),

          ),
          title: Text(event.name),
          subtitle: Text(event.desc),

        ),
      ),
    );
  }
}
