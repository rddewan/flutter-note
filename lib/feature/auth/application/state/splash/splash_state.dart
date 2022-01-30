
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';

part 'splash_state.freezed.dart';

@immutable
@freezed
class SplashState with _$SplashState {
  factory SplashState({required AsyncValue<AuthModel?> authModel}) = _SplashState;

}