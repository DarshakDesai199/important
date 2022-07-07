import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ts extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final double? height;
  final String family;
  final double? latterSpace;
  final double? wordSpace;
  final TextOverflow? overFlow;
  final int? maxLine;
  final TextAlign? textAlign;
  const Ts(
      {Key? key,
      required this.text,
      this.size = 15,
      this.color,
      this.weight,
      this.height,
      this.family = 'Nunito',
      this.latterSpace,
      this.wordSpace,
      this.overFlow,
      this.maxLine,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: overFlow,
      textAlign: textAlign,
      style: GoogleFonts.getFont(
        family,
        wordSpacing: wordSpace,
        fontSize: size,
        fontWeight: weight,
        color: color,
        height: height,
      ),
    );
  }
}
