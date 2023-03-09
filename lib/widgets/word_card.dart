import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  const WordCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                Text('Théo'),
                Spacer(),
                Text('#123')
              ],
            ),
            const Text('Contenu du petit mot que j\'ai récupéré sur la carte. Et qui décrit mon mot.'),
          ],
        )
      )
    );
  }
}
