import 'package:flutter/material.dart';

void main() {
  runApp(const App2());
}

class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var n in numbers)
                Text(
                  '$n',
                  style: const TextStyle(
                    fontSize: 25,
                    backgroundColor: Colors.amber,
                  ),
                ),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add,
                ),
                iconSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
