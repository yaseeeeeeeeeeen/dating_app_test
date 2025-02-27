import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final int age;
  final String avatar;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['login']['uuid'],
      name: '${json['name']['first']} ${json['name']['last']}',
      age: json['dob']['age'],
      avatar: json['picture']['large'],
    );
  }

  @override
  List<Object?> get props => [id, name, age, avatar];
}
