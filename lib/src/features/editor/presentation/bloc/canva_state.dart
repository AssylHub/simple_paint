part of 'canva_bloc.dart';

@freezed
class CanvaState with _$CanvaState {
  const factory CanvaState.initial() = _Initial;
  const factory CanvaState.loading() = _Loading;
  const factory CanvaState.failure(String message) = _Failure;
  const factory CanvaState.loaded({required CanvaViewModel vm}) = _Loaded;
}

@freezed
class CanvaViewModel with _$CanvaViewModel {
  const CanvaViewModel._();
  factory CanvaViewModel({
    @Default(FileDto.empty()) FileDto file,
    @Default(<FileDto>[]) List<FileDto> files,
  }) = _CanvaViewModel;
}
