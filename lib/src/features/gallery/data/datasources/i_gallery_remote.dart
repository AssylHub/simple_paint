// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class IGalleryRemote {
//   User? user = FirebaseAuth.instance.currentUser;

//   Future<void> saveUploadedFilesData(Map<String, String> data) async {
//     return FirebaseFirestore.instance
//         .collection("user-files")
//         .doc(user!.uid)
//         .collection("uploads")
//         .doc()
//         .set(data);
//   }

//   Stream<QuerySnapshot> readUploadedFiles() {
//     return FirebaseFirestore.instance
//         .collection("user-files")
//         .doc(user!.uid)
//         .collection("uploads")
//         .snapshots();
//   }
// }
