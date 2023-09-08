import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tech_staunch_practicle/main.dart';


class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
        actions: [Text(AppLocalizations.of(context)?.helloWorld??'')],

      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){

              MyApp.setLocale(context, Locale('gu'));

            }, child: Text('Gujarati')),
            ElevatedButton(onPressed: (){
              MyApp.setLocale(context, Locale('hi'));

            }, child: Text('Hindi')),
            ElevatedButton(onPressed: (){
              MyApp.setLocale(context, Locale('en'));

            }, child: Text('English'))
          ],
        ),
      ),
    );
  }
}
