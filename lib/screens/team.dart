//@dart=2.9
import 'package:dsc_iiits/Widgets/logo.dart';
import 'package:dsc_iiits/Widgets/member_list.dart';
import 'package:dsc_iiits/models/member.dart';
import 'package:dsc_iiits/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Member>>.value(
//      initialData: [],
      value: DatabaseService().members,

      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 0,),
            logo,
            SizedBox(height: 10,),
//            MemberList(),
            Expanded(child: SingleChildScrollView(child: MemberList())),



          ],
        ),
      ),
    );
  }
}
