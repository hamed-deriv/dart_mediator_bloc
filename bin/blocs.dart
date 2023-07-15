import 'package:dart_mediator_bloc/base_mediator.dart';
import 'package:dart_mediator_bloc/mediator_participant.dart';

class BlocA<T> implements MediatorParticipant {
  BaseMediator? mediator;

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
  void receiveMessage(Object message) =>
      print('$runtimeType received message: $message');
}

class BlocB<T> implements MediatorParticipant {
  BaseMediator? mediator;

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
  void receiveMessage(Object message) =>
      print('$runtimeType received message: $message');
}
