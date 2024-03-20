import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class ColumnText extends StatelessWidget {
  final String title;
  final String subtitle;
  const ColumnText({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: myTextTheme.titleLarge,
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                subtitle,
                style: myTextTheme.labelMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
