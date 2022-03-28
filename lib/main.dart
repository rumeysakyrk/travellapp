import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travellapp/cubit/app_cubit_logics.dart';
import 'package:travellapp/cubit/app_cubits.dart';
import 'package:travellapp/pages/detail_page.dart';
import 'package:travellapp/pages/home_page.dart';
import 'package:travellapp/pages/welcome_page.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    primarySwatch: Colors.blue,
      ),
        home:BlocProvider<AppCubits>(
          create:(context)=> AppCubits(),
          child: AppCubitLogics(),
        ),
    );
  }
}
