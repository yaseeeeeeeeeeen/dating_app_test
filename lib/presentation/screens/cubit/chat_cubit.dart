import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/chat_user.dart';

class ChatState {
  final List<ChatUser> users;
  ChatState(this.users);
}

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState([]));

  void loadChats() {
    emit(
      ChatState([
        ChatUser(
          id: "1",
          name: "Swati",
          avatar: "https://example.com/avatar1.jpg",
          isVerified: false,
          isPinned: false,
          isNewMatch: true,
          hasUnreadMessage: true,
          lastMessage: "Hey, how was your day?",
        ),
        ChatUser(
          id: "2",
          name: "Jyoti",
          avatar: "https://example.com/avatar2.jpg",
          isVerified: true,
          isPinned: true,
          isNewMatch: false,
          hasUnreadMessage: true,
          lastMessage: "Hey, how was your day?",
        ),
      ]),
    );
  }
}
