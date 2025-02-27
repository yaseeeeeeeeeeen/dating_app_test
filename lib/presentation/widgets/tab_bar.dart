import 'package:dating_app_test/presentation/screens/compliments_screen.dart';
import 'package:dating_app_test/presentation/screens/connections_screen.dart';
import 'package:flutter/material.dart';

class ChatTabs extends StatefulWidget {
  @override
  _ChatTabsState createState() => _ChatTabsState();
}

class _ChatTabsState extends State<ChatTabs> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: [ConnectionsScreen(), ComplimentsScreen()],
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          _buildTabButton(0, "Direct connections"),
          const SizedBox(width: 8),
          _buildTabButton(1, "Compliments"),
        ],
      ),
    );
  }

  Widget _buildTabButton(int index, String text) {
    bool isSelected = _selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
