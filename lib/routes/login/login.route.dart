import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlewords/providers/username.provider.dart';
import 'package:littlewords/widgets/littleworlds_logo.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          child: SaveUsernameButton(
            controller: _txtController,
          ),
        ),
      ]),
    );
  }


}

class SaveUsernameButton extends ConsumerWidget {
  const SaveUsernameButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => _onPressed(ref),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(48),
      ),
      child: Text("Enregistrer nom"),
    );
  }

  void _onPressed(WidgetRef ref){
    var text = controller.text;
    print('Text:$text');

    SharedPreferences.getInstance().then((prefs){
      prefs.setString('username', text);
      ref.refresh(usernameProvider);
    });
  }
}