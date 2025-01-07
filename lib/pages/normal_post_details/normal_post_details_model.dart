import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'normal_post_details_widget.dart' show NormalPostDetailsWidget;
import 'package:flutter/material.dart';

class NormalPostDetailsModel extends FlutterFlowModel<NormalPostDetailsWidget> {
  ///  Local state fields for this page.

  List<String> repoFiles = [];
  void addToRepoFiles(String item) => repoFiles.add(item);
  void removeFromRepoFiles(String item) => repoFiles.remove(item);
  void removeAtIndexFromRepoFiles(int index) => repoFiles.removeAt(index);
  void insertAtIndexInRepoFiles(int index, String item) =>
      repoFiles.insert(index, item);
  void updateRepoFilesAtIndex(int index, Function(String) updateFn) =>
      repoFiles[index] = updateFn(repoFiles[index]);

  bool showTextField = true;

  bool isTextField1Valid = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetFiles)] action in normalPostDetails widget.
  ApiCallResponse? apiResultoaa;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field cannot be empty';
    }
    if (val != textFieldSelectedOption1) {
      return 'Be a bit more descriptive';
    }

    return null;
  }

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();

    textFieldFocusNode3?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
