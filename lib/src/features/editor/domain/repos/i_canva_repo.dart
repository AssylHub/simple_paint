import 'package:fpdart/fpdart.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/core/models/file_dto.dart';

abstract interface class ICanvaRepo {
  Future<Either<DomainException, List<FileDto>>> readUploadedFiles();
  Future<Either<DomainException, Unit>> saveUploadedFiles(FileDto file);
}
