import 'dart:math'; // Import Random for probability control
import 'package:dating_app_test/data/model/user_data_model.dart';
import 'package:dating_app_test/data/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComplimentState {
  final List<ComplimentUser> users;
  ComplimentState(this.users);
}

class ComplimentUser extends User {
  final String message;
  final int expiresInHours;
  final bool isNew;

  const ComplimentUser({
    required super.id,
    required super.name,
    required super.age,
    required super.avatar,
    required this.message,
    required this.expiresInHours,
    required this.isNew,
  });
}

class ComplimentsCubit extends Cubit<ComplimentState> {
  final UserService userService;

  ComplimentsCubit({required this.userService}) : super(ComplimentState([]));

  void loadCompliments() async {
    try {
      final users = await userService.fetchRandomUsers(10);
      final messages = [
        "You have a great sense of humor!",
        "Your positivity is infectious.",
        "You are an amazing friend.",
      ];

      final random = Random();

      final complimentUsers =
          users.map((user) {
            return ComplimentUser(
              id: user.id,
              name: user.name,
              age: user.age,
              avatar: user.avatar,
              message: messages[random.nextInt(messages.length)],
              expiresInHours: 48,
              isNew: random.nextDouble() < 0.25,
            );
          }).toList();

      emit(ComplimentState(complimentUsers));
    } catch (e) {
      // Handle error
    }
  }
}
