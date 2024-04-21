import 'package:empat_flutter_week_8/features/joke_list/data/datasource/datasource.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/repositories/jokes_repository.dart';

class JokesRepositoryImpl implements JokesRepository {
  final Datasource datasource = Datasource();

  @override
  Future<Jokes> getJokes() {
    return datasource.getJokesFromUrl();
  }
}