import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/log_screen.dart';
import 'package:untitled8/swcCubit.dart';
import 'package:untitled8/use_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SwcCubit(),),
        BlocProvider(create: (context) => UserCubit(),)

      ],

      child: MaterialApp(

        home:  LogScreen(),
      ),
    );
  }
}
