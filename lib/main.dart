import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'bottom_items.dart';
import 'cards_radio.dart';
import 'navig_side.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello'),
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
  int isClickedCon = 0;
  List<double> Freqs = [98.5, 100.1, 160, 125.2, 200, 140];
  List<String> Names = [
    "One Station",
    "Two Station",
    "Three Station",
    "Four Station",
    "Five Station",
    "Six Station"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 1, 42),
        body: SafeArea(
          child: Row(
            children: [
              const NavigBarSide(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Hello',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          const Text(
                            ' Miau',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 41, 109),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 325,
                          ),
                          Image.asset('images/1.png'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Text(
                        'Popular',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    /////////GridView
                    ///
                    Container(
                      width: MediaQuery.of(context).size.width - 110,
                      height: MediaQuery.of(context).size.height - 400,
                      child: GridView.count(
                        crossAxisCount: 2,
                        // Generate 100 Widgets that display their index in the List
                        children: List.generate(6, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                                onTap: () {
                                  isClickedCon = index;
                                  setState(() {});
                                },
                                child: BuildCard(Freqs[index], Names[index],
                                    isClickedCon == index ? true : false)),
                          );
                        }),
                      ),
                    ),
                    /////////
                    Expanded(child: Container()),
                    BottomItems(),
                  ],
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
