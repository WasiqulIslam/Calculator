import 'package:flutter/material.dart';

//Development started by Wasiqul Islam at 19.05/2023
//Link used for UI design: https://www.codementor.io/@akki7272/build-calculator-app-ui-using-basic-flutter-widgets-uoegag35o

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(color: Colors.black),
          ),
          Flexible(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("C"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("+/-"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("%"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("\u00F7"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("7"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("8"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("9"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("X"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("4"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("5"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("6"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("-"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("1"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("2"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("3"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("+"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("0"),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text("."),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () => {},
                              child: const Text(""),
                            ),
                          ),
                        ],
                      ),
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
