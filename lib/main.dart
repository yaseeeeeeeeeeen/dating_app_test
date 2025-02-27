import 'package:dating_app_test/data/service/user_service.dart';
import 'package:dating_app_test/presentation/cubit/chat_cubit.dart';
import 'package:dating_app_test/presentation/cubit/compliment_chat_cubit.dart';
import 'package:dating_app_test/presentation/cubit/story_cubit.dart';
import 'package:dating_app_test/presentation/screens/home_screen.dart';
import 'package:dating_app_test/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  final userService = UserService();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatCubit(userService: userService)..loadChats(),
        ),
        BlocProvider(
          create:
              (context) =>
                  ComplimentsCubit(userService: userService)..loadCompliments(),
        ),
        BlocProvider(create: (context) => StoryCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Dating App',
      home: HomeScreen(),
    );
  }
}
