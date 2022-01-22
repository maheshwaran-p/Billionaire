import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'invite_event.dart';
part 'invite_state.dart';

class InviteBloc extends Bloc<InviteEvent, InviteState> {
  InviteBloc() : super(InviteInitial());

  @override
  Stream<InviteState> mapEventToState(
    InviteEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
