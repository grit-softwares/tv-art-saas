// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class GradientText extends StatefulWidget {
  const GradientText({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.gradientColors,
    required this.fontSize,
    this.fontWeight,
  });

  final double? width;
  final double? height;
  final String text;
  final List<String> gradientColors;
  final double fontSize;
  final String? fontWeight;

  @override
  State<GradientText> createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText> {
  // Método para converter List<String> de cores para List<Color>
  List<Color> parseGradientColors(List<String> gradientColorsString) {
    return gradientColorsString.map((colorString) {
      return Color(int.parse(colorString.replaceFirst('0x', ''), radix: 16))
          .withOpacity(1.0);
    }).toList();
  }

  // Método para converter String para FontWeight
  FontWeight parseFontWeight(String? fontWeightString) {
    switch (fontWeightString?.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      default:
        return FontWeight.normal; // Valor padrão
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: parseGradientColors(widget.gradientColors),
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontWeight: parseFontWeight(widget.fontWeight),
          color: Colors
              .white, // Define a cor base para o texto (necessária para ShaderMask)
        ),
      ),
    );
  }
}
