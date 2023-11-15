import 'package:flutter/material.dart';
import 'package:interview_task/presentation/view/pcik_ride/pick_ride_view.dart';
import 'package:interview_task/presentation/view/ride_history/ride_history_view.dart';
import 'package:interview_task/presentation/view/signup/sign_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpView(),
    );
  }
}