import 'package:calculator/display_panel.dart';
import 'package:calculator/my_text_button.dart';
import 'package:calculator/options_panel.dart';
import 'package:calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  final buttonsKeys = [
    ['CE', 'DEL', '(', ')'],
    ['7', '8', '9', '+'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '*'],
    ['0', '.', '=', '/']
  ];

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String toDisplay = "0";
  List<String> historyOperations = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).getThemeMode(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: Stack(
                    alignment: const Alignment(0,-0.9),
                    children: [
                      OptionsPanel(isLightMode: Provider.of<ThemeProvider>(context).isLightMode),
                      DisplayPanel(
                        toDisplay: toDisplay,
                        historyOperations: historyOperations,
                      ),
                    ]
                  )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(62),topRight: Radius.circular(62)),
                    border: Border.all(
                        color: Provider.of<ThemeProvider>(context).secondaryColor.withOpacity(0.07), width: 1)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(62),
                  child: GridView.count(
                    crossAxisCount: 4,
                    padding: const EdgeInsets.all(16.0),
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    children: [
                      for (var i = 0; i < 5; i++)
                        for (var j = 0; j < 4; j++)
                          if (i == 0 && j == 0)
                            MyTextButton(
                                onLongPress: () {
                                  setState(() {
                                    toDisplay = '0';
                                    historyOperations = [];
                                  });
                                },
                                color: Colors.amber[900],
                                onPressed: () {
                                  setState(() {
                                    toDisplay = '0';
                                  });
                                },
                                child: Text(widget.buttonsKeys[i][j]))
                          else if (i == 0 && j == 1)
                            MyTextButton(
                              color: Colors.amber[900],
                                onPressed: () {
                                  setState(() {
                                    if (toDisplay.length == 1) {
                                      toDisplay = '0';
                                    } else {
                                      toDisplay = toDisplay.substring(
                                          0, toDisplay.length - 1);
                                    }
                                  });
                                },
                                child: Text(widget.buttonsKeys[i][j]))
                          else if (i == 4 && j == 2)
                            MyTextButton(
                                onPressed: () {
                                  setState(() {
                                    historyOperations.add(toDisplay);
                                    Parser p = Parser();
                                    Expression exp = p.parse(toDisplay);
                                    toDisplay = (exp.evaluate(
                                            EvaluationType.REAL, ContextModel()))
                                        .toString();
                                  });
                                },
                                child: Text(widget.buttonsKeys[i][j]))
                          else
                            MyTextButton(
                              color: j == 3 || i == 0 ? Colors.amber[900] : null,
                                onPressed: () {
                                  setState(() {
                                    if (toDisplay == '0') {
                                      toDisplay = widget.buttonsKeys[i][j];
                                    } else {
                                      toDisplay += widget.buttonsKeys[i][j];
                                    }
                                  });
                                },
                                child: Text(widget.buttonsKeys[i][j]))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
