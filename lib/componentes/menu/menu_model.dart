import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  String? verMenu;

  ///  State fields for stateful widgets in this component.

  // State field(s) for menu-home widget.
  bool menuHomeHovered = false;
  // State field(s) for menu-paint-palette widget.
  bool menuPaintPaletteHovered = false;
  // State field(s) for menu-minhas-paletas widget.
  bool menuMinhasPaletasHovered = false;
  // State field(s) for menu-art-invoice widget.
  bool menuArtInvoiceHovered = false;
  // State field(s) for menu-meus-creditos widget.
  bool menuMeusCreditosHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
