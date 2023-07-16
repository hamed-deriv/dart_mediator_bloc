import 'package:bloc/bloc.dart';

import 'base_mediator.dart';
import 'mediator_participant.dart';

abstract class BaseBloc<T> extends BlocBase<T> implements MediatorParticipant {
  BaseBloc(T state, [String? name]) : super(state) {
    _name = name ?? '$runtimeType';
  }

  late final String _name;

  BaseMediator? mediator;

  String get name => _name;

  @override
  void setMediator(BaseMediator mediator) => this.mediator = mediator;

  @override
  void sendMessage(Object message) {
    if (mediator == null) {
      throw Exception('$runtimeType mediator not set');
    }

    mediator!.sendMessage(message, this);
  }

  @override
  void receiveMessage(Object message);
}
