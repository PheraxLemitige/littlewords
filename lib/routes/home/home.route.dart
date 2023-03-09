import 'package:flutter/material.dart';
import 'package:littlewords/widgets/word_card.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {

    final bodies = <Widget>[
      const _Page0(),
      const _Page1(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Littlewords'),
      ),
      body: bodies[bottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationBarIndex,
        onTap: (int index) {
          setState(() {
            bottomNavigationBarIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove),
            label: 'B',
          ),
        ],
      ),
    );
  }
}

class _Page0 extends StatelessWidget {
  const _Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.tealAccent,
        child: const Center(
          child: Text("69", style:TextStyle(fontSize:64)),
        )
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: WordCard());
  }
}
