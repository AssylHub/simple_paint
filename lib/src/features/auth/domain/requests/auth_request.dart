import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_request.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
abstract class AuthRequest with _$AuthRequest {
  @Implements<BaseRequest>()
  const AuthRequest._();
  const factory AuthRequest({required String email, required String password}) =
      _AuthRequest;

  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);
}
