

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@immutable
@freezed
abstract class LoginState with _$LoginState{

  factory LoginState({
    required AsyncValue<bool> isLogedin,
    @Default(false) bool isLoading,
    @Default(false) bool isPaused,
  }) = _LoginState;

}