import 'package:flutter/material.dart';

import 'Screens/Home/home_screen.dart';

main()=>runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Chat',
       theme: ThemeData(
         primaryColor: const Color(0xFF01afbd),
       ),
      home: const HomeScreen(),
    );
  }
}
