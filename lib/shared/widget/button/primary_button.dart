// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class PrimaryButton extends StatefulWidget {
  final Function()? onPressed;
  final String? text;
  final String? pathIcon;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.pathIcon,
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    Color textColor = widget.onPressed != null ? neutralBlack : neutralWhite;
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 40,
      ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: widget.onPressed != null
              ? MaterialStatePropertyAll(primaryColor)
              : const MaterialStatePropertyAll(gray400),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          overlayColor:
              MaterialStateProperty.all<Color>(primaryColor.withOpacity(0.2)),
        ),
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              trimString(widget.text).isNotEmpty
                  ? Text(
                      trimString(widget.text),
                      style:
                          myTextTheme.titleLarge?.copyWith(color: neutralWhite),
                    )
                  : Container(),
              const SizedBox(
                width: 8.0,
              ),
              trimString(widget.pathIcon).isNotEmpty
                  ? SvgPicture.asset(
                      trimString(widget.pathIcon),
                      color: textColor,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
