import 'package:flutter_bloc/flutter_bloc.dart';

class StoryState {
  final List<Map<String, dynamic>> photos;
  final String ourStoryImage;

  StoryState({required this.photos, required this.ourStoryImage});
}

class StoryCubit extends Cubit<StoryState> {
  StoryCubit()
    : super(
        StoryState(
          ourStoryImage:
              "https://images.unsplash.com/photo-1668896903246-1733eca3334d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDY1fHx8ZW58MHx8fHx8",
          photos: [
            {
              'url':
                  'https://images.unsplash.com/photo-1740564014446-f07ea2da269c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'count': 10,
            },
            {
              'url':
                  'https://images.unsplash.com/photo-1580235251676-afe2441c12b8?q=80&w=1949&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'count': 3,
            },
            {
              'url':
                  'https://plus.unsplash.com/premium_photo-1689974468409-fe05eba9c660?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'count': 7,
            },
          ],
        ),
      );

  void addPhoto(Map<String, dynamic> photo) {
    final updatedPhotos = List<Map<String, dynamic>>.from(state.photos)
      ..add(photo);
    emit(StoryState(photos: updatedPhotos, ourStoryImage: state.ourStoryImage));
  }
}
