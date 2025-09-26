import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/core/models/file_dto.dart';

// import '../../../../core/exceptions/domain_exception.dart';
// import '../../../../core/utils/helpers/auth_error_helper.dart'
// show mapFirebaseAuthException; // optional; or write a Firestore mapper
// import '../../models/sketch_dto.dart'; // if you also persist sketches
// import '../../../../core/models/file_dto.dart';
import 'i_canva_remote.dart';

@LazySingleton(as: ICanvaRemote)
class CanvaRemoteImpl implements ICanvaRemote {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  CanvaRemoteImpl({required this.auth, required this.firestore});

  String get _uid {
    final u = auth.currentUser;
    if (u == null) {
      // you can create a dedicated NotAuthenticatedException if you prefer
      throw UnknownException(message: 'User is not authenticated');
    }
    return u.uid;
  }

  CollectionReference<Map<String, dynamic>> get _uploadsCol =>
      firestore.collection('user-files').doc(_uid).collection('uploads');

  @override
  Future<Either<DomainException, List<FileDto>>> readUploadedFiles() async {
    try {
      final snap =
          await _uploadsCol.orderBy('created_at', descending: true).get();

      final files = snap.docs.map((d) {
        final data = d.data();
        // if Firestore doc doesn't contain `id`, keep your incoming `public_id` in data
        // or set it from doc.id if that’s your schema:
        data.putIfAbsent('id', () => d.id);
        return FileDto.fromJson(data);
      }).toList();

      return Right(files);
    } on FirebaseException catch (e) {
      // Map Firestore exceptions to your domain exceptions; reuse your mapper or return UnknownException
      return Left(UnknownException(
          message: '[${e.code}] ${e.message ?? 'Firestore error'}'));
    } catch (e, st) {
      return Left(UnknownException(message: e.toString(), stackTrace: st));
    }
  }

  @override
  Future<Either<DomainException, Unit>> saveUploadedFiles(FileDto file) async {
    try {
      // choose doc id policy: use file.id (public_id) or auto-id
      final ref = _uploadsCol.doc(file.id); // or: _uploadsCol.doc()
      await ref.set(file.toJson(), SetOptions(merge: true));
      return Right(unit);
    } on FirebaseException catch (e) {
      return Left(UnknownException(
          message: '[${e.code}] ${e.message ?? 'Firestore error'}'));
    } catch (e, st) {
      return Left(UnknownException(message: e.toString(), stackTrace: st));
    }
  }
}
