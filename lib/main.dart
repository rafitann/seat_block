import 'package:flutter/material.dart';
import 'package:seat_block/FrontBus.dart';
import 'package:seat_block/SeatStates.dart';
import 'package:seat_block/seat_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Selecione os assentos desejados",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SeatStates(),
            ),
            Expanded(
              flex: 8,
              child: SeatsList(),
            )
          ],
        )
        ); // This trailing comma makes auto-formatting nicer for build method
  }
}
