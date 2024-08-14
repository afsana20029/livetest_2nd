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
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: (Text(message)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Experiment with text styles',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextButton(
                onPressed: () {
                  MySnackBar("You clicked the button", context);
                },
                child: Text('Click me')),
            SizedBox(
              height: 16,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to'),
                  SizedBox(width: 5),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.blue,
                    ),
                  )
                ],



        ),
     ] ),
    ),);
  }
}
