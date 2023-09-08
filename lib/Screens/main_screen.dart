import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)?.helloWorld??''),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.goNamed('users');
                },
                child: const Text('Get User List with pagination')),

            ElevatedButton(
                onPressed: () {
                  context.goNamed('language');
                },
                child: const Text('Change Language')),
          ],
        ),
      ),
    );
  }
}
