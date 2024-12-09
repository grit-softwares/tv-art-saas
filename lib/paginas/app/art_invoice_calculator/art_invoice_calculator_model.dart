import '/componentes/footer/footer_widget.dart';
import '/componentes/header/header_widget.dart';
import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'art_invoice_calculator_widget.dart' show ArtInvoiceCalculatorWidget;
import 'package:flutter/material.dart';

class ArtInvoiceCalculatorModel
    extends FlutterFlowModel<ArtInvoiceCalculatorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    footerModel.dispose();
  }
}
