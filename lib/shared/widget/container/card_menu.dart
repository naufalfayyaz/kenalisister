import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/shared/theme/theme_config.dart';

class MenuBeranda extends StatefulWidget {
  final String prefixSVG;
  final String suffixSVG;
  final String title;
  final String subtitle;
  final Function()? navTo;

  const MenuBeranda({
    super.key,
    required this.prefixSVG,
    required this.suffixSVG,
    required this.title,
    required this.subtitle,
    this.navTo,
  });

  @override
  State<MenuBeranda> createState() => _MenuBerandaState();
}

class _MenuBerandaState extends State<MenuBeranda> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.navTo,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: SvgPicture.asset(
                widget.prefixSVG,
                width: 56,
                height: 56,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: myTextTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    widget.subtitle,
                    style: myTextTheme.bodySmall,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 13.0,
            ),
            SvgPicture.asset(
              widget.suffixSVG,
              width: 12,
              height: 12,
              color: blue800,
            ),
          ],
        ),
      ),
    );
  }
}
