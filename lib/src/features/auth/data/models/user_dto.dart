import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/features/auth/domain/entities/user.dart';

import '../../../../core/base/base_models/base_dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  @Implements<BaseDto>()
  const UserDto._();
  const factory UserDto({
    required String uid,
    String? email,
    String? displayName,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  UserEntity toEntity() =>
      UserEntity(uid: uid, email: email, displayName: displayName);
}
