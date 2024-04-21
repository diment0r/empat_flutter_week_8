class Joke {
  int id;
  String type;
  String setup;
  String punchline;
  int likes = 0;
  int dislikes = 0;

  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });
}
