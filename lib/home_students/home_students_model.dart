import '/flutter_flow/flutter_flow_util.dart';
import 'home_students_widget.dart' show HomeStudentsWidget;
import 'package:flutter/material.dart';

class HomeStudentsModel extends FlutterFlowModel<HomeStudentsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
