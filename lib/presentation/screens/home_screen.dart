import 'package:dating_app_test/presentation/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Chat")), body: ChatTabs());
  }
}
