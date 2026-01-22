import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint('onChange - $change');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    debugPrint('OnClose - $bloc closed');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    debugPrint('OnCreate - $bloc created');
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    // TODO: implement onTransition
  }
  }