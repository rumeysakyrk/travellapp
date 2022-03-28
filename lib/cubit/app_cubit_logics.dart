import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travellapp/cubit/app_cubit_states.dart';
import 'package:travellapp/cubit/app_cubits.dart';
import 'package:travellapp/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
          builder: (context, state){
            if (state is WelcomeState) return welcomePage();
            else return Container();// return widget here based on BlocA's state
          }
      ),
    );
  }
}
