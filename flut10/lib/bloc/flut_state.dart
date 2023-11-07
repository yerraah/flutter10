import 'package:equatable/equatable.dart';

abstract class FlutState extends Equatable {
  const FlutState();

  @override
  List<Object> get props => [];
}

class FlutInitial extends FlutState {}

class FlutUpdatedState extends FlutState {
  final int flutCount;

  FlutUpdatedState(this.flutCount);

  @override
  List<Object> get props => [flutCount];

  @override
  String toString() => 'FlutUpdatedState { flutCount: $flutCount }';
}
