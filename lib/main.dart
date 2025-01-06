import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BMIPage(title: 'BMI CAlCULATOR'),
    );
  }
}

class BMIPage extends StatefulWidget {
  const BMIPage({super.key, required this.title});

  final String title;

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black26,
              height: 80,
              child: Text(
                "BMI Calculator",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [Text("Male")],
                ),
                Column(
                  children: [Text("Female")],
                )
              ],
            ),
            Slider(
              value: 1.0,
              onChanged: (value) {},
            ),
            Row(
              children: [
                Column(
                  children: [Text("Weight")],
                ),
                Column(
                  children: [Text("Age")],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [Text("Clear")],
                ),
                Column(
                  children: [Text("Get BMI")],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Text("Your BMI"),
                )
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
