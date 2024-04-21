import 'package:empat_flutter_week_8/core/util/colors.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_cubit.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokeTileWidget extends StatelessWidget {
  final Joke joke;

  const JokeTileWidget({
    super.key,
    required this.joke,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: CColors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: CColors.darkGrey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          joke.type,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    const Expanded(child: Text('')),
                    Icon(Icons.thumb_up, size: 16, color: Colors.green[500]),
                    const SizedBox(width: 4),
                    Text('${joke.likes}'),
                    const SizedBox(width: 15),
                    Icon(Icons.thumb_down, size: 16, color: Colors.red[500]),
                    const SizedBox(width: 4),
                    Text('${joke.dislikes}'),
                  ],
                ),
                const SizedBox(height: 5),
                Text(joke.setup),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
