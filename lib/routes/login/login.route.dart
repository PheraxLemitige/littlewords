import 'package:flutter/material.dart';
import 'package:littlewords/widgets/littleworlds_logo.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Spacer(),
        LittleWorldsLogo(),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:8.0),
          child: TextField(
              decoration: InputDecoration(
            fillColor: Colors.lightBlue,
            filled: true,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top:8.0, left:8.0, right:8.0,bottom:24),
          child: ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(48),
          ), child: Text("Enregistrer nom"),),
        ),
      ]),
    );
  }
}
