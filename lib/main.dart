import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pigeon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int isum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(title: const Text('Flash Light Sample')),
          body: Center(
              child: Column(children: [
            const SizedBox(height: 16),
            Text("$isum"),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: getBook,
              child: const Text('Sum'),
            ),
          ])),
        ));
  }

  Future getBook() async {
    StrctSrc src = StrctSrc();
    src.a = 5;
    src.b = 10;

    final int? result = await JavaApi().sum(src);

    setState(() => isum = result ?? 0);
  }
}
