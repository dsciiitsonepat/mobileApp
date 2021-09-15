// @dart=2.9
//import 'package:brew_crew_app/screens/home/brew_tile.dart';
import 'package:dsc_iiits/Widgets/member_tile.dart';
import 'package:dsc_iiits/models/member.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MemberList extends StatefulWidget {
  @override
  _MemberListState createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  @override
  Widget build(BuildContext context) {

    final members = Provider.of<List<Member>>(context) ?? [];


    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: members.length,
      itemBuilder: (context,index) {

        return MemberTile(member: members[index]);
      },
    );
  }
}
