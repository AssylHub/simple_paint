import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import "package:http/http.dart" as http;
import 'package:simple_paint/src/core/models/file_dto.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/features/editor/data/datasources/remote/canva_remote_impl.dart';

Future<bool> uploadToCloudinary(FilePickerResult? filePickerResult) async {
  if (filePickerResult == null || filePickerResult.files.isEmpty) {
    print("No file selected");

    return false;
  }

  File file = File(filePickerResult.files.single.path!);

  String cloudName = dotenv.env["CLAUDINARY_CLOUD_NAME"] ?? "";

  var uri = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/raw/upload");
  var request = http.MultipartRequest(
    "POST",
    uri,
  );

  var fileBytes = await file.readAsBytes();

  var multipartFile = http.MultipartFile.fromBytes(
    "file",
    fileBytes,
    filename: file.path.split("/").last,
  );

  request.files.add(multipartFile);

  request.fields["upload_preset"] = "preset-for-file-upload";
  request.fields["resource_type"] = "raw";

  var response = await request.send();

  var responseBody = await response.stream.bytesToString();

  print(responseBody);

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(responseBody);

    FileDto data = FileDto(
      name: filePickerResult.files.first.name,
      id: jsonResponse["public_id"],
      extension: filePickerResult.files.first.extension!,
      size: jsonResponse["bytes"].toString(),
      url: jsonResponse["secure_url"],
      createdAt: jsonResponse["created_at"],
    );

    await CanvaRemoteImpl(
      auth: getIt<FirebaseAuth>(),
      firestore: getIt<FirebaseFirestore>(),
    ).saveUploadedFiles(data);
    print("Upload successfully");
    return true;
  } else {
    print("Upload failed with status: ${response.statusCode}");
    return false;
  }
}
