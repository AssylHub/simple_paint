import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_dto.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

@freezed
abstract class FileDto with _$FileDto {
  @Implements<BaseDto>()
  const FileDto._();
  const factory FileDto({
    required String name,
    required String id,
    required String extension,
    required String size,
    required String url,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _FileDto;

  const factory FileDto.empty({
    @Default("") String name,
    @Default("") String id,
    @Default("") String extension,
    @Default("") String size,
    @Default("") String url,
    @Default("") @JsonKey(name: 'created_at') String createdAt,
  }) = _FileDtoEmpty;

  factory FileDto.fromJson(Map<String, dynamic> json) =>
      _$FileDtoFromJson(json);

  // optional: mapping to domain entity
  // FileEntity toEntity() => FileEntity(
  //   name: name,
  //   id: id,
  //   extension: extension,
  //   size: size,
  //   url: url,
  //   createdAt: createdAt,
  // );
}
