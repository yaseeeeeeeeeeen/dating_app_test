import 'package:dating_app_test/domain/entity/compliment_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ComplimentsState {
  final List<ComplimentUser> compliments;
  ComplimentsState(this.compliments);
}

class ComplimentsCubit extends Cubit<ComplimentsState> {
  ComplimentsCubit() : super(ComplimentsState([]));

  void loadCompliments() {
    emit(
      ComplimentsState([
        ComplimentUser(
          id: "1",
          name: "John",
          age: 26,
          avatar: "https://example.com/avatar1.jpg",
          message: "Hey, really liked your story",
          expiresInHours: 48,
          isNew: true,
        ),
        ComplimentUser(
          id: "2",
          name: "Mathew",
          age: 30,
          avatar: "https://example.com/avatar2.jpg",
          message: "Hey, really liked your story",
          expiresInHours: 23,
          isNew: false,
        ),
      ]),
    );
  }
}
