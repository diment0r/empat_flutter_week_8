import 'package:empat_flutter_week_8/features/joke_list/domain/entities/joke.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/entities/jokes.dart';
import 'package:empat_flutter_week_8/features/joke_list/domain/use_cases/jokes_usecase.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/cubit/jokes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokesCubit extends Cubit<JokesState> {
  JokesUseCase useCase = JokesUseCase();

  JokesCubit() : super(JokesInitial());

  void getJokes() async {
    emit(JokesLoading());
    emit(JokesData(jokes: await useCase.getJokes()));
  }

  
}
