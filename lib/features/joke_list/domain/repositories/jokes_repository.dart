import 'dart:async';

import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';

abstract class JokesRepository {
  Future<Jokes> getJokes();
}