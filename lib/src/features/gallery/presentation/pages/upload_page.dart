import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:simple_paint/src/core/models/file_dto.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/features/editor/presentation/bloc/canva_bloc.dart';

class UploadArea extends StatefulWidget {
  const UploadArea({super.key, required this.selectedFile});

  final FilePickerResult selectedFile;

  @override
  State<UploadArea> createState() => _UploadAreaState();
}

class _UploadAreaState extends State<UploadArea> {
  @override
  Widget build(BuildContext context) {
    final selectedFile = widget.selectedFile;
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Area"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              readOnly: true,
              initialValue: selectedFile.files.first.name,
              decoration: InputDecoration(label: Text("Name")),
            ),
            TextFormField(
              readOnly: true,
              initialValue: selectedFile.files.first.extension,
              decoration: InputDecoration(label: Text("Exention")),
            ),
            TextFormField(
              readOnly: true,
              initialValue: "${selectedFile.files.first.size} bytes.",
              decoration: InputDecoration(label: Text("Size")),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final picked = selectedFile.files.first;
                      final now = DateTime.now();
                      final file = FileDto(
                        name: picked.name,
                        id: picked.identifier ?? picked.name,
                        extension: picked.extension ?? '',
                        size: picked.size.toString(),
                        url: picked.path ?? '',
                        createdAt: now.toIso8601String(),
                      );

                      final bloc = getIt<CanvaBloc>();
                      bloc.add(CanvaEvent.saveFile(file: file));

                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Saved locally.')),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: Text("Save"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
