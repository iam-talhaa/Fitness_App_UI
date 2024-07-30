import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C_button extends StatefulWidget {
  final name;
  Color B_color;
  VoidCallback ontap;

  C_button(
      {super.key,
      required this.name,
      required this.B_color,
      required this.ontap});

  @override
  State<C_button> createState() => _C_buttonState();
}

class _C_buttonState extends State<C_button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: widget.B_color),
          child: Center(
            child: Text(
              widget.name,
              style: GoogleFonts.literata(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
