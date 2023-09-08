import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_staunch_practicle/Respository/user_repository.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

class UserBloc extends Bloc<BlocEvent, BlocState> {
  final UserRepository userRepository = UserRepository();
  UserBloc() : super(BlocInitial()) {
    on<BlocEvent>((event, emit) async {
      if (event is FetchData) {
        emit(BlocLoading());

        try {
          final data = await userRepository.getUsersList(page: event.page);

          emit(BlocLoaded(
              usersList: data,));
        } catch (e) {
          emit(BlocError(errorMessage: e.toString()));
        }
      }
    });
  }
}
