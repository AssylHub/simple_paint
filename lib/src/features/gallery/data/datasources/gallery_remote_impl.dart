// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:simple_paint/src/core/models/file_dto.dart';

// class GalleryRemoteImpl {
//   User? user = FirebaseAuth.instance.currentUser;

//   Future<void> saveUploadedFilesData(FileDto data) async {
//     return FirebaseFirestore.instance
//         .collection("user-files")
//         .doc(user!.uid)
//         .collection("uploads")
//         .doc()
//         .set(data.toJson());
//   }

//   Stream<QuerySnapshot> readUploadedFiles() {
//     return FirebaseFirestore.instance
//         .collection("user-files")
//         .doc(user!.uid)
//         .collection("uploads")
//         .snapshots();
//   }
// }
