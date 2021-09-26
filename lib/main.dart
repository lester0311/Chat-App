// @dart=2.9
import 'package:chatapp/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_app.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/service_locator.dart';

void main() {
  serviceLoctorSetup();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}
