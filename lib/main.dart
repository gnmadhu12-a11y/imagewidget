import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter image widget',
      debugShowCheckedModeBanner:
          false, // this will make the debug banner disappear
      home:
          imagewidget(), // to remove this blue lines we need to use const keyword
    );
  }
}

class imagewidget extends StatefulWidget {
  const imagewidget({super.key});

  @override
  State<imagewidget> createState() => _imagewidgetState();
}

class _imagewidgetState extends State<imagewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //this will place the container in center of the screen
        child: Image.asset(
          'assets/my_image.jpg', // we have create a folder named 'assets'
          height: 500, // and placed an image with name 'my_image.jpg' in it
          width: 350, // and also mentioned that folder in pubspec.yaml file
          fit: BoxFit
              .cover, // boxfit is used to cover the entire space of height and width
        ),
      ),
    );
  }
}

// these commands are used while executing flutter run command in terminal
//r Hot reload.
//R Hot restart.
//h List all available interactive commands.
//d Detach (terminate "flutter run" but leave application running).
//c Clear the screen
//q Quit (terminate the application on the device).
