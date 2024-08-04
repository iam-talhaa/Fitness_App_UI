import 'package:fitness_app/res/Resources.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C_text extends StatefulWidget {
  C_text({
    super.key,
  });

  @override
  State<C_text> createState() => _C_textState();
}

class _C_textState extends State<C_text> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "",
      style: GoogleFonts.literata(
          color: whiteColor, fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}
