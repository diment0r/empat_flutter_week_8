import 'dart:convert';

import 'package:empat_flutter_week_8/features/joke_list/data/models/jokes_model.dart';
import 'package:http/http.dart' as http;

class Datasource {
  Future<JokesModel> getJokesFromUrl() async {
    final response = await http
        .get(Uri.parse('https://official-joke-api.appspot.com/random_ten'));

    if(response.statusCode == 200) {
      return JokesModel.fromJson(jsonDecode(response.body) as List<dynamic>, 10);
    } else {
      throw Exception('Failed to load jokes data');
    }
  }
}
