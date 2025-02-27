import 'package:dating_app_test/presentation/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final ChatUser user;

  const ChatTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.avatar),
        radius: 25,
      ),
      title: Row(
        children: [
          Text(
            user.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (user.isVerified)
            Icon(Icons.verified, color: Colors.green, size: 16),
          if (!user.isVerified)
            Icon(Icons.access_time_filled, color: Colors.grey, size: 16),
        ],
      ),
      subtitle: Text(
        user.lastMessage,
        style: TextStyle(
          color: user.hasUnreadMessage ? Colors.orange : Colors.black54,
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (user.isNewMatch)
            Container(
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "NEW MATCH",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          if (user.isPinned) Icon(Icons.push_pin, color: Colors.grey, size: 16),
          if (user.hasUnreadMessage)
            Icon(Icons.circle, color: Colors.orange, size: 10),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MockPage()),
        );
      },
    );
  }
}

class MockPage extends StatelessWidget {
  const MockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Chat screen",
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
