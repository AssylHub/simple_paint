import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/core/models/file_dto.dart';
import 'package:simple_paint/src/features/editor/domain/repos/i_canva_repo.dart';
import 'package:simple_paint/src/features/editor/data/datasources/remote/canva_remote_impl.dart';
import 'package:simple_paint/src/features/editor/data/datasources/remote/i_canva_remote.dart';

@LazySingleton(as: ICanvaRepo)
class CanvaRepoImpl implements ICanvaRepo {
  // Simple in-memory list storage instead of Firebase/remote
  static final List<FileDto> _memoryFiles = <FileDto>[];
  // Keep constructor to satisfy generated injectable config; dependency is unused
  CanvaRepoImpl(ICanvaRemote _ignored);

  @override
  Future<Either<DomainException, List<FileDto>>> readUploadedFiles() async {
    try {
      // Return a copy to avoid outside mutations
      return Right(List<FileDto>.from(_memoryFiles));
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, Unit>> saveUploadedFiles(FileDto file) async {
    try {
      // Upsert by id
      final existingIndex =
          _memoryFiles.indexWhere((existing) => existing.id == file.id);
      if (existingIndex >= 0) {
        _memoryFiles[existingIndex] = file;
      } else {
        _memoryFiles.insert(0, file);
      }
      return Right(unit);
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}

// try {
//       final result = await _remote.signUp(authRequest);

//       return result.fold(
//         (error) => Left(error),
//         (userDto) => Right(userDto.toEntity()),
//       );
//     } catch (e) {
//       return Left(
//         e is DomainException ? e : UnknownException(message: e.toString()),
//       );
//     }
