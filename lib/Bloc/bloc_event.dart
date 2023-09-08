
import 'package:flutter/cupertino.dart';
import 'package:tech_staunch_practicle/Models/user.dart';

abstract class BlocEvent{}

class FetchData extends BlocEvent{
  final int page;
  FetchData({required this.page, });
}