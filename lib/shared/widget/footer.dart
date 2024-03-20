import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenali_sister/core.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dipersembahkan oleh",
          style: GoogleFonts.lato().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: gray600,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SvgPicture.asset(
          'assets/images/logo/logoBapenda.svg',
          color: gray500,
        ),
      ],
    );
  }
}
