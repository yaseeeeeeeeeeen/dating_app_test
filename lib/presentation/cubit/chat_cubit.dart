import 'dart:math'; // Import Random for probability control
import 'package:dating_app_test/data/model/user_data_model.dart';
import 'package:dating_app_test/data/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatState {
  final List<ChatUser> users;
  ChatState(this.users);
}

class ChatUser extends User {
  final bool isVerified;
  final bool isPinned;
  final bool isNewMatch;
  final bool hasUnreadMessage;
  final String lastMessage;

  ChatUser({
    required String id,
    required String name,
    required int age,
    required String avatar,
    required this.isVerified,
    required this.isPinned,
    required this.isNewMatch,
    required this.hasUnreadMessage,
    required this.lastMessage,
  }) : super(id: id, name: name, age: age, avatar: avatar);
}

class ChatCubit extends Cubit<ChatState> {
  final UserService userService;

  ChatCubit({required this.userService}) : super(ChatState([]));

  void loadChats() async {
    try {
      final users = await userService.fetchRandomUsers(10);
      final random = Random();

      final chatUsers =
          users.map((user) {
            return ChatUser(
              id: user.id,
              name: user.name,
              age: user.age,
              avatar: user.avatar,
              isVerified: random.nextDouble() < 0.3,
              isPinned: random.nextDouble() < 0.2,
              isNewMatch: random.nextDouble() < 0.5,
              hasUnreadMessage: random.nextDouble() < 0.6,
              lastMessage:
                  random.nextBool()
                      ? "Hey, how was your day?"
                      : "It was nice talking to you!",
            );
          }).toList();

      emit(ChatState(chatUsers));
    } catch (e) {
      // Handle error
    }
  }
}
