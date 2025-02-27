import 'package:dating_app_test/presentation/screens/cubit/chat_cubit.dart';
import 'package:dating_app_test/presentation/widgets/filter_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/chat_tile.dart';

class ConnectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterBar(onClose: () {}),
        Expanded(
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(height: 2),
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ChatTile(user: user);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
