import 'package:dart_mediator_bloc/mediator_participant.dart';

import 'base_mediator.dart';

class Mediator implements BaseMediator {
  Mediator(this.participants);

  final List<MediatorParticipant> participants;

  @override
  void sendMessage(Object message, MediatorParticipant sender) {
    for (final MediatorParticipant participant in participants) {
      if (participant != sender) {
        participant.receiveMessage(message);
      }
    }
  }
}
