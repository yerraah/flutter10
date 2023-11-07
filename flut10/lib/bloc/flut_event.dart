import 'package:equatable/equatable.dart';

abstract class FlutEvent extends Equatable {
  const FlutEvent();

  @override
  List<Object> get props => [];
}

class FlutButtonPressed extends FlutEvent {
  final String title;

  FlutButtonPressed(this.title);

  @override
  List<Object> get props => [title];

  @override
  String toString() => 'FlutButtonPressed { title: $title }';
}
