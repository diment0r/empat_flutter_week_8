import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';

abstract class JokesState {
  final Jokes jokes;

  JokesState({required this.jokes});
}

class JokesInitial extends JokesState {
  JokesInitial() : super(jokes: Jokes());
}

class JokesLoading extends JokesState {
  JokesLoading() : super(jokes: Jokes());
}

class JokesData extends JokesState {
  JokesData({required super.jokes});
}


