import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_edit_widget.dart' show CreateEditWidget;
import 'package:flutter/material.dart';

class CreateEditModel extends FlutterFlowModel<CreateEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for yourContact widget.
  FocusNode? yourContactFocusNode;
  TextEditingController? yourContactTextController;
  String? Function(BuildContext, String?)? yourContactTextControllerValidator;
  // State field(s) for yourGuardianName widget.
  FocusNode? yourGuardianNameFocusNode;
  TextEditingController? yourGuardianNameTextController;
  String? Function(BuildContext, String?)?
      yourGuardianNameTextControllerValidator;
  // State field(s) for guardiaPhone widget.
  FocusNode? guardiaPhoneFocusNode;
  TextEditingController? guardiaPhoneTextController;
  String? Function(BuildContext, String?)? guardiaPhoneTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    yourContactFocusNode?.dispose();
    yourContactTextController?.dispose();

    yourGuardianNameFocusNode?.dispose();
    yourGuardianNameTextController?.dispose();

    guardiaPhoneFocusNode?.dispose();
    guardiaPhoneTextController?.dispose();
  }
}
