import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_entity.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  @Implements<BaseEntity>()
  const UserEntity._();
  const factory UserEntity({
    required String uid,
    String? email,
    String? displayName,
  }) = _UserEntity;

  const factory UserEntity.empty({
    @Default("") String uid,
    @Default("") String email,
    @Default("") String displayName,
  }) = _UserEntityEmpty;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
