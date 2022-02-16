
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@immutable
@freezed
abstract class SignupState with _$SignupState{

  factory SignupState({
    required AsyncValue<bool> isSignup,
    @Default(false) bool isLoading ,
  }) = _SignupState;
}