import 'package:dsc_iiits/Widgets/logo.dart';
import 'package:dsc_iiits/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 0,),
          logo,
          SizedBox(height:20),
          Text(
            "Welcome !",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'SourceCodePro-Bold',
              fontWeight: FontWeight.bold,


            )

          ),
          SizedBox(height: 10,),
          Text(
              "Estd. 2021",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'SourceCodePro-Bold',
                fontWeight: FontWeight.bold,


              )

          ),
          SizedBox(height: 200,),
          ElevatedButton(
              onPressed: () {

              },
              style: raisedButtonStyle.copyWith(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
              child: Text("Join Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),



              )
          )



        ],
      ),
    );
  }
}
