import 'package:dating_app_test/presentation/screens/cubit/compliment_chat_cubit.dart'
    show ComplimentsCubit, ComplimentsState;
import 'package:dating_app_test/presentation/widgets/compliment_tile.dart';
import 'package:dating_app_test/presentation/widgets/story_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComplimentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoryCardList(),
        SizedBox(height: 10),
        Expanded(
          child: BlocBuilder<ComplimentsCubit, ComplimentsState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.compliments.length,
                itemBuilder: (context, index) {
                  return ComplimentTile(user: state.compliments[index]);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
