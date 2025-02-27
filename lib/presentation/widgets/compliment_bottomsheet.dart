import 'package:dating_app_test/domain/entity/compliment_user.dart';
import 'package:flutter/material.dart';

class ComplimentDetailBottomSheet extends StatelessWidget {
  final ComplimentUser user;

  const ComplimentDetailBottomSheet({Key? key, required this.user})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${user.name}, ${user.age}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                if (user.isNew)
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Text(
                      "NEW",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
              ],
            ),
            subtitle: Text(
              "Connection expires in ${user.expiresInHours} hours",
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade600,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user.message,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  "7:20pm",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "You need to connect to chat.",
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              minimumSize: const Size(double.infinity, 48),
            ),
            onPressed: () {
              // Handle connect and chat
            },
            child: const Text(
              "Connect and chat",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Hide this user",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
