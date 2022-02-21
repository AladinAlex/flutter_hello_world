import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory №2',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        foregroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.green, fontSize: 26),
            ),
            Text(
              '$_counter',
              //style: Theme.of(context).textTheme.headline1,
              style: const TextStyle(color: Colors.green, fontSize: 26),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(
                onPressed: _decrementCounter,
                child: const Text("-",
                    style: TextStyle(color: Colors.black, fontSize: 22)),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
              ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("+",
                      style: TextStyle(color: Colors.black, fontSize: 22)))
            ]),
            //todo: отсутствует кнопка "Сбросить" для счетчика нажатий
            ElevatedButton(onPressed: _clearCounter,
              child: const Text("Сбросить счетчик",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              style: ElevatedButton.styleFrom(primary: Colors.amber),),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   backgroundColor: Colors.brown,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
