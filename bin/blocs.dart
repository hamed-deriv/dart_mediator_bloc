import 'package:dart_mediator_bloc/base_bloc.dart';

class BlocA<T> extends BaseBloc<T> {
  BlocA(T state, [String name = 'Bloc A']) : super(state, name);

  @override
  void receiveMessage(Object message) =>
      print('$name received message: $message');
}

class BlocB<T> extends BaseBloc<T> {
  BlocB(T state, [String name = 'Bloc B']) : super(state, name);

  @override
  void receiveMessage(Object message) =>
      print('$name received message: $message');
}
