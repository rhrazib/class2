
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void _showToast(BuildContext context) {
    final snacBar = SnackBar(content: Text('This is toast message'));
    ScaffoldMessenger.of(context).showSnackBar(snacBar);

  }
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XYZ',
      theme: ThemeData(
       primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      )
    );
  }
}

