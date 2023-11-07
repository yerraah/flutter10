import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:form_app/bloc/flut_event.dart';
import 'package:form_app/bloc/flut_state.dart';

class FlutBloc extends Bloc<FlutEvent, FlutState> {
  int flutCount = 0;

  FlutBloc() : super(FlutInitial());

  Stream<FlutState> mapEventToState(FlutEvent event) async* {
    if (event is FlutButtonPressed) {
      if (flutCount == 0) {
        flutCount = 1;
      } else {
        flutCount = 0;
      }
      yield FlutUpdatedState(flutCount);
    }
  }
}
