import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/use_cases/jokes_usecase.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/components/joke_tile.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_cubit.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_state.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/screens/joke_dialog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokeListScreen extends StatefulWidget {
  const JokeListScreen({super.key});

  @override
  State<JokeListScreen> createState() => _JokeListScreenState();
}

class _JokeListScreenState extends State<JokeListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  Future<dynamic> _showMyDialog(Joke joke) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => JokeDialogScreen(joke: joke),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Jokes'), backgroundColor: Colors.green),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            sliver: BlocBuilder<JokesCubit, JokesState>(
              builder: (context, state) {
                int childLenght;
                if (state is JokesLoading) {
                  childLenght = 1;
                } else {
                  childLenght = state.jokes.jokes.length;
                }

                return SliverList.separated(
                  itemCount: childLenght,
                  itemBuilder: (context, index) {
                    if (state is JokesLoading) {
                      return const Text('Waiting');
                    } else {
                      return GestureDetector(
                        onTap: () async {
                          bool isLiked =
                              await _showMyDialog(state.jokes.jokes[index]);
                        },
                        child: JokeTileWidget(joke: state.jokes.jokes[index]),
                      );
                    }
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
