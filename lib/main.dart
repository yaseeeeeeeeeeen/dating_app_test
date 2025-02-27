import 'package:dating_app_test/presentation/screens/cubit/chat_cubit.dart';
import 'package:dating_app_test/presentation/screens/cubit/compliment_chat_cubit.dart';
import 'package:dating_app_test/presentation/screens/cubit/story_cubit.dart';
import 'package:dating_app_test/presentation/screens/home_screen.dart';
import 'package:dating_app_test/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatCubit>(create: (context) => ChatCubit()..loadChats()),
        BlocProvider(create: (context) => StoryCubit()),
        BlocProvider(create: (context) => ComplimentsCubit()..loadCompliments()),
      ],

      child: MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Dating App',
        home: HomeScreen(),
      ),
    );
  }
}
