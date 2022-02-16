
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout_state.freezed.dart';

@immutable
@freezed
abstract class SignoutState with _$SignoutState {

  factory SignoutState({
    required AsyncValue<bool> isLogout
  }) = _SignoutState;  
}