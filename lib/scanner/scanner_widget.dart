import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'scanner_model.dart';
export 'scanner_model.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget({super.key});

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  late ScannerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScannerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await geminiGenerateText(
              context,
              'Create a code for a qr code scanner widget that validates the student if the qr code has the student qr code on the students list, then  log the students attendance once the qr code presented is succesffully recognized that it is on the students list! with that hover to a new page that says okey.html  on the other hand if the QR code presented is not or no match from the  students Qr Code datas on their kids! than all the student ',
            ).then((generatedText) {
              safeSetState(() => _model.qrCodeScanner = generatedText);
            });

            setState(() {});
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/gradient-technology-futuristic-background_23-2149155718.jpg',
                ).image,
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowWebView(
                  content: _model.qrCodeScanner!,
                  bypass: false,
                  width: 650.0,
                  height: 650.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
