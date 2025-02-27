import 'package:dating_app_test/domain/entity/compliment_user.dart';
import 'package:dating_app_test/presentation/widgets/compliment_bottomsheet.dart';
import 'package:flutter/material.dart';

class ComplimentTile extends StatelessWidget {
  final ComplimentUser user;

  const ComplimentTile({super.key, required this.user});

  void _showComplimentDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isDismissible: true,
      builder: (context) {
        return ComplimentDetailBottomSheet(user: user);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showComplimentDetails(context),
      child: Column(
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
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "NEW",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.message),
                Text(
                  "Connection expires in ${user.expiresInHours} hours",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
