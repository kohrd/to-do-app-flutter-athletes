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
        // This is the theme of your application.
        //fffffffeee
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedC567567 (save your changes or press the "hot
        // reload" button in a Flutter-7).
        //
        // Notice that the counter d657o, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,),
      home: const FirstWidget(),

    );
  }
}


class  FirstWidget extends StatelessWidget {
  const FirstWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Text("fff", style: TextStyle(color: Colors.red, fontSize: 50), ),
      ),

    );
  }
}
