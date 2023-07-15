import 'mediator_participant.dart';

abstract class BaseMediator {
  void sendMessage(Object message, MediatorParticipant sender);
}
