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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

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
            children: [
              showTitle ? const MyTitleTheme() : const Text('nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTitleTheme extends StatefulWidget {
  const MyTitleTheme({super.key});

  @override
  State<MyTitleTheme> createState() => _MyTitleThemeState();
}

class _MyTitleThemeState extends State<MyTitleTheme> {
  @override
  void initState() {
    print('initstate');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
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
