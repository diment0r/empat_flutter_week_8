import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:flutter/material.dart';

class JokeDialogScreen extends StatelessWidget {
  final Joke joke;

  const JokeDialogScreen({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Joke id: ${joke.id}'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(joke.punchline),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.thumb_up),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          icon: const Icon(Icons.thumb_down),
        )
      ],
    );
  }
}
