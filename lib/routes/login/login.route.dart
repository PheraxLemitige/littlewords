import 'package:flutter/material.dart';
import 'package:littlewords/widgets/littleworlds_logo.dart';

class LoginRoute extends StatelessWidget {
  LoginRoute({Key? key}) : super(key: key);

  final TextEditingController _txtController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Spacer(),
        LittleWorldsLogo(),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            controller: _txtController,
              decoration: InputDecoration(
            fillColor: Colors.lightBlue,
            filled: true,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 8.0, bottom: 24),
          child: ElevatedButton(
            onPressed: _onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(48),
            ),
            child: Text("Enregistrer nom"),
          ),
        ),
      ]),
    );
  }

  void _onPressed(){
    var text = _txtController.text;
    print('Text:$text');
  }
}


