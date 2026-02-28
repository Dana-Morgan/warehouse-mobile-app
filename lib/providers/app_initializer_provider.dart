import 'package:firebase_core/firebase_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_initializer_provider.g.dart';

class AppInitModel {
  final int progress;
  final bool isFinished;

  AppInitModel({
    required this.progress,
    required this.isFinished,
  });

  AppInitModel copyWith({
    int? progress,
    bool? isFinished,
  }) {
    return AppInitModel(
      progress: progress ?? this.progress,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}

@riverpod
class AppInitializer extends _$AppInitializer {

  @override
  AppInitModel build() {
    return AppInitModel(progress: 0, isFinished: false);
  }

  Future<void> initialize() async {
    await Firebase.initializeApp();
    state = state.copyWith(progress: 30);

    // ill get user info here
    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(progress: 70);

    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(progress: 100, isFinished: true);
  }
}