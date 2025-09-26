import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_paint/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:simple_paint/src/core/router/router.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/core/theme/theme.dart';
import 'package:simple_paint/src/core/widgets/custom_button.dart';
import 'package:simple_paint/src/features/editor/presentation/bloc/canva_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  FilePickerResult? _filePickerResult;

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowedExtensions: [
        "jpg",
        'jpeg',
        "png",
        "mp4",
      ],
      type: FileType.custom,
    );

    setState(() {
      _filePickerResult = result;
    });

    context.pushNamed(
      RouteNames.upload,
      extra: _filePickerResult,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _openFilePicker();
            },
            icon: Icon(Icons.upload),
          )
        ],
      ),
      body: BaseBlocWidget<CanvaBloc, CanvaEvent, CanvaState>(
        bloc: getIt<CanvaBloc>(),
        starterEvent: const CanvaEvent.loadFiles(),
        builder: (context, state, bloc) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomButton(
                    text: 'Создать',
                    onTap: () {
                      context.pushNamed(RouteNames.painter);
                    },
                    hasGradient: true,
                    textColor: AppColors.white,
                  ),
                  Expanded(
                    child: Builder(
                      builder: (_) {
                        return state.map(
                          initial: (_) => const Center(child: Text('No data')),
                          loading: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          failure: (s) => Center(child: Text(s.message)),
                          loaded: (s) {
                            final files = s.vm.files;
                            if (files.isEmpty) {
                              return const Center(
                                  child: Text('No files saved yet'));
                            }
                            return GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                              ),
                              itemCount: files.length,
                              itemBuilder: (context, index) {
                                final item = files[index];
                                final ext = item.extension.toLowerCase();
                                final isImage = ext == 'png' ||
                                    ext == 'jpg' ||
                                    ext == 'jpeg';
                                return Container(
                                  color: Colors.grey.shade200,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: isImage && item.url.isNotEmpty
                                            ? Image.file(
                                                File(item.url),
                                                errorBuilder: (c, e, st) =>
                                                    const Icon(Icons
                                                        .image_not_supported),
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              )
                                            : const Icon(
                                                Icons.insert_drive_file),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          item.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  // Expanded(
                  //   child: StreamBuilder(
                  //     stream: CanvaRemoteImpl(auth: null, firestore: null)
                  //         .readUploadedFiles(),
                  //     builder: (context, snapshot) {
                  //       if (snapshot.hasData) {
                  //         List userUploadedFiles = snapshot.data!.docs;
                  //         if (userUploadedFiles.isEmpty) {
                  //           return Center(
                  //             child: Text("No files uploaded"),
                  //           );
                  //         } else {
                  //           return GridView.builder(
                  //               gridDelegate:
                  //                   const SliverGridDelegateWithFixedCrossAxisCount(
                  //                 crossAxisCount:
                  //                     2, // Number of columns in the grid
                  //                 childAspectRatio:
                  //                     1, // Aspect ratio for each grid item
                  //                 crossAxisSpacing: 8, // Spacing between columns
                  //                 mainAxisSpacing: 8, // Spacing between rows
                  //               ),
                  //               itemCount: userUploadedFiles.length,
                  //               itemBuilder: (context, index) {
                  //                 String name = userUploadedFiles[index]["name"];
                  //                 String ext =
                  //                     userUploadedFiles[index]["extension"];
                  //                 String public_id = userUploadedFiles[index]["id"];
                  //                 String fileUrl = userUploadedFiles[index]["url"];

                  //                 return GestureDetector(
                  //                   onLongPress: () {
                  //                     showDialog(
                  //                         context: context,
                  //                         builder: (context) => AlertDialog(
                  //                               title: const Text("Delete file"),
                  //                               content: const Text(
                  //                                   "Are you sure you want to delete?"),
                  //                               actions: [
                  //                                 TextButton(
                  //                                     onPressed: () {
                  //                                       Navigator.pop(context);
                  //                                     },
                  //                                     child: Text("No")),
                  //                                 TextButton(
                  //                                     onPressed: () async {},
                  //                                     child: Text("Yes")),
                  //                               ],
                  //                             ));
                  //                   },
                  //                   onTap: () {},
                  //                   child: Container(
                  //                     color: Colors.grey.shade200,
                  //                     child: Column(
                  //                       mainAxisAlignment: MainAxisAlignment.start,
                  //                       children: [
                  //                         Expanded(
                  //                           child: ext == "png" ||
                  //                                   ext == "jpg" ||
                  //                                   ext == "jpeg"
                  //                               ? Image.network(
                  //                                   fileUrl,
                  //                                   width: double.infinity,
                  //                                   height: double.infinity,
                  //                                   fit: BoxFit.cover,
                  //                                 )
                  //                               : Icon(Icons.movie),
                  //                         ),
                  //                         Padding(
                  //                           padding: const EdgeInsets.all(8.0),
                  //                           child: Row(
                  //                             children: [
                  //                               Icon(ext == "png" ||
                  //                                       ext == "jpg" ||
                  //                                       ext == "jpeg"
                  //                                   ? Icons.image
                  //                                   : Icons.movie),
                  //                               SizedBox(
                  //                                 width: 10,
                  //                               ),
                  //                               Expanded(
                  //                                 child: Text(
                  //                                   name,
                  //                                   maxLines: 1,
                  //                                   overflow: TextOverflow.ellipsis,
                  //                                 ),
                  //                               ),
                  //                               IconButton(
                  //                                   onPressed: () async {},
                  //                                   icon: Icon(Icons.download))
                  //                             ],
                  //                           ),
                  //                         )
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 );
                  //               });
                  //         }
                  //       } else if (snapshot.hasError) {
                  //         return Center(
                  //           child: Text(snapshot.error.toString()),
                  //         );
                  //       } else {
                  //         return Center(
                  //           child: CircularProgressIndicator(),
                  //         );
                  //       }
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
