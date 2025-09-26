part of 'canva_bloc.dart';

@freezed
class CanvaEvent with _$CanvaEvent {
  const factory CanvaEvent.loadFiles() = _LoadFiles;
  const factory CanvaEvent.saveFile({
    required FileDto file,
  }) = _SaveFile;
}
