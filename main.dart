import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UxDesign(),
    );
  }
}

class UxDesign extends StatefulWidget {
  const UxDesign({super.key});

  @override
  State<UxDesign> createState() => _UxDesignState();
}

class _UxDesignState extends State<UxDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text(
            'Expanded Widgets',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.teal,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.purple,
                      child: Row(children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.brown,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.indigo,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white24,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.orange,
                          ),
                        ),
                      ]),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pinkAccent,
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueGrey,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    color: Colors.black38,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.brown,
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
