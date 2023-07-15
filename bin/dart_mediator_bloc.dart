import 'package:dart_mediator_bloc/base_mediator.dart';
import 'package:dart_mediator_bloc/mediator.dart';
import 'package:dart_mediator_bloc/mediator_participant.dart';

import 'blocs.dart';

void main() {
  final BlocA<String> blocA = BlocA<String>();
  final BlocB<int> blocB = BlocB<int>();

  final BaseMediator mediator = Mediator(<MediatorParticipant>[blocB, blocA]);

  blocB.setMediator(mediator);
  blocA.setMediator(mediator);

  blocB.sendMessage('Hello from Bloc B!');
  blocA
    ..sendMessage('Hello from Bloc A!')
    ..sendMessage('Hello from Bloc A!')
    ..sendMessage('Hello from Bloc A!');
}
