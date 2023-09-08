import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_staunch_practicle/Bloc/bloc.dart';
import 'package:tech_staunch_practicle/Bloc/bloc_event.dart';
import 'package:tech_staunch_practicle/Bloc/bloc_state.dart';

class UserList extends StatelessWidget {
  UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return UserBloc()
          ..add(FetchData(
            page: 1,
          ));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users List'),
        ),
        body: SafeArea(
          child: BlocBuilder<UserBloc, BlocState>(
            builder: (context, state) {
              if (state is BlocLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is BlocError) {
                return Center(child: Text(state.errorMessage));
              }

              if (state is BlocLoaded) {
                return ListView.builder(
                  itemCount: state.usersList.users?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final userData = state.usersList.users?[index];

                    return Column(
                      children: [
                        ListTile(
                          leading: ClipRect(
                            child: Image.network(userData?.profilePicture ?? '',
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50, errorBuilder: (BuildContext context,
                                    Object exception, StackTrace? stackTrace) {
                              return const Icon(Icons.error);
                            }),
                          ),
                          title: Text(
                              '${userData?.firstName ?? ''} ${userData?.lastName ?? ''}'),
                          subtitle: Text(userData?.email ?? ''),
                        ),
                      ],
                    );
                  },
                );
              }

              return const Center(child: Text('Something went wrong'));
            },
          ),
        ),
      ),
    );
  }
}
