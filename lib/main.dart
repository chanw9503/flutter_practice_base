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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final postList = [
    {"title": "Smaple Title 1", "colorData": Colors.red},
    {"title": "Smaple Title 2", "colorData": Colors.green},
    {"title": "Smaple Title 3", "colorData": Colors.yellow},
    {"title": "Smaple Title 4", "colorData": Colors.purple},
    {"title": "Smaple Title 5", "colorData": Colors.orange},
    {"title": "Smaple Title 6", "colorData": Colors.blue},
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: '1', color: Colors.red),
          postContainer(number: '2', color: Colors.green),
          postContainer(number: '3', color: Colors.yellow),
          postContainer(number: '4', color: Colors.purple),
          postContainer(number: '1', color: Colors.red),
          postContainer(number: '2', color: Colors.green),
          postContainer(number: '3', color: Colors.yellow),
          postContainer(number: '4', color: Colors.purple),
          postContainer(number: '1', color: Colors.red),
          postContainer(number: '2', color: Colors.green),
          postContainer(number: '3', color: Colors.yellow),
          postContainer(number: '4', color: Colors.purple),
        ],
      ),
    );
  }

  Widget postContainer({String number = '1', color = Colors.amber}) {
    return Container(
        height: 200,
        color: color,
        child: Center(
          child: Text('Box $number'),
        ));
  }
}
