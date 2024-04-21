import 'package:empat_flutter_week_8/features/joke_list/data/repositories/jokes_repository_impl.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/repositories/jokes_repository.dart';

class JokesUseCase {
  final JokesRepository repository = JokesRepositoryImpl();

  Future<Jokes> getJokes() async {
    return await repository.getJokes();
  }
}