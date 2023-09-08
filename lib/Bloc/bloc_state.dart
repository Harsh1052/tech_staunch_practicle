

import 'package:equatable/equatable.dart';
import 'package:tech_staunch_practicle/Models/user.dart';

class BlocState extends Equatable {
  const BlocState();

  List<Object> get props => [];
}

class BlocInitial extends BlocState {}

class BlocLoading extends BlocState {}

class BlocError extends BlocState {
  final String errorMessage;

  const BlocError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class BlocLoaded extends BlocState {
  final User usersList;
   const BlocLoaded({required this.usersList});


  @override
  List<Object> get props => [usersList,usersList,];

  @override
  String toString() =>
      'PostLoaded { posts: ${usersList} }';
}