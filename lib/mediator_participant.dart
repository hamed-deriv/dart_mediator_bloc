import 'package:dart_mediator_bloc/base_mediator.dart';

abstract class MediatorParticipant {
  void setMediator(BaseMediator mediator);

  void sendMessage(Object message);

  void receiveMessage(Object message);
}
