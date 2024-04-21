import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';

class JokesModel extends Jokes {
  JokesModel.fromJson(List<dynamic> json, int jokesNumber) {
    for (int i = 0; i < jokesNumber; i++) {
      jokes.add(Joke(
        id: json[i]['id'],
        type: json[i]['type'],
        setup: json[i]['setup'],
        punchline: json[i]['punchline'],
      ));
    }
  }
}
