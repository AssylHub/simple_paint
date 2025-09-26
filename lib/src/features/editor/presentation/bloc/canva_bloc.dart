import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:simple_paint/src/core/models/file_dto.dart';
import 'package:simple_paint/src/features/editor/data/repos/canva_repo_impl.dart';
import 'package:simple_paint/src/features/editor/domain/repos/i_canva_repo.dart';

part 'canva_bloc.freezed.dart';
part 'canva_event.dart';
part 'canva_state.dart';

class CanvaBloc extends BaseBloc<CanvaEvent, CanvaState> {
  CanvaBloc(
    @Named.from(CanvaRepoImpl) this._repository,
  ) : super(_Initial());

  final ICanvaRepo _repository;
  final CanvaViewModel _viewModel = CanvaViewModel();

  @override
  Future<void> onEventHandler(CanvaEvent event, Emitter emit) async {
    await event.when(
      loadFiles: () => _loadFiles(event as _LoadFiles, emit),
      saveFile: (FileDto file) => _saveFile(event as _SaveFile, emit),
    );
  }

  Future<void> _loadFiles(_LoadFiles event, Emitter emit) async {
    try {
      emit(_Loading());
      final result = await _repository.readUploadedFiles();

      result.fold(
        (error) => emit(_Failure(error.message)),
        (List<FileDto> result) => emit(
          _Loaded(
            vm: _viewModel.copyWith(files: result),
          ),
        ),
      );
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }

  Future<void> _saveFile(_SaveFile event, Emitter emit) async {
    try {
      emit(_Loading());
      final saveResult = await _repository.saveUploadedFiles(event.file);

      await saveResult.fold((error) async {
        emit(_Failure(error.message));
      }, (ok) async {
        final filesResult = await _repository.readUploadedFiles();
        filesResult.fold(
          (error) => emit(_Failure(error.message)),
          (files) => emit(_Loaded(vm: _viewModel.copyWith(files: files))),
        );
      });
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }
}
