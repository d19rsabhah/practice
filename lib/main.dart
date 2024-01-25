import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter Container'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Tapped On Container');
            },
            onLongPress: () {
              print('On long pressed on container');
            },
            onDoubleTap: () {
              print('On double pressed on container');
            },
            child: Container(
                width: 300,
                height: 300,
                color: Colors.amber,
                child: Center(
                    child: InkWell(
                  onTap: () {
                    print('Tapped on Text-Widget');
                  },
                  child: Text(
                    "Click here",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent),
                  ),
                ))),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
