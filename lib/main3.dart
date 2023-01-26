import 'package:flutter/material.dart';

void main() {
  runApp(const App3());
}

class App3 extends StatefulWidget {
  const App3({super.key});

  @override
  State<App3> createState() => _App3State();
}

class _App3State extends State<App3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            backgroundColor: Colors.deepOrangeAccent.shade200,
            fontSize: 35,
          ),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyTitleTheme(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTitleTheme extends StatelessWidget {
  const MyTitleTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'MyTitleTheme',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        backgroundColor:
            Theme.of(context).textTheme.titleLarge?.backgroundColor,
      ),
    );
  }
}
