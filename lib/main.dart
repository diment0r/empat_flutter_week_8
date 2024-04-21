import 'package:empat_flutter_week_8/core/widgets/global_navigation.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// ! СПРОСИТЬ ПРО ФИЧИ ПРИ СДАЧЕ
// ! Что делать с массивом шуток, он никак не меняется, как его хранить в cubit и нужно ли это делать?
// ! Где хранить shimmer если он используется в нескольких местах? Или для для каждой фичи создавать новый shimmer?
// ! Как инициализировать cubit постами? InitialCubit
// ! Так как у меня Future<Jokes> это если без Cubit loading Cubit loaded и тд

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => JokesCubit()..getJokes(),
        child: const GlobalNavigationWidget(),
      ),
    );
  }
}
