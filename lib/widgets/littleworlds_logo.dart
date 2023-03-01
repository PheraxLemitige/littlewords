import 'package:flutter/material.dart';

class LittleWorldsLogo extends StatelessWidget {
  const LittleWorldsLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width:12)
      ),
    );
  }
}
