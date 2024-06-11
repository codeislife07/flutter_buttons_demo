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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          children: <Widget>[
            //show elevated button
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Elevated Button"),
              icon: Icon(Icons.navigate_before),
            ),
            SizedBox(
              height: 20,
            ),

            //icon button
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),

            //out line button
            OutlinedButton(onPressed: () {}, child: Text("Outline button")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                label: Text("Outline button")),

            //text button
            TextButton(onPressed: () {}, child: Text("Text Button")),
            TextButton.icon(
              onPressed: () {},
              label: Text("Text Button"),
              icon: Icon(Icons.add),
            ),
            SizedBox(
              height: 20,
            ),
            //How customize button
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.red,
                  ),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  elevation: MaterialStatePropertyAll(0),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.yellow, width: 1))),
                ),
                onPressed: () {},
                child: Text("Customize"))
          ],
        ),
      ),
    );
  }
}



//use this type of style in all above button style


