import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconCircular extends StatelessWidget {
  const CustomIconCircular(
      {super.key, required this.isBorder, required this.svgPath});
  final bool isBorder;
  final String svgPath;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        shape: BoxShape.circle,
        border: isBorder
            ? Border.all(
                color: Colors.white,
                width: 1,
              )
            : null,
      ),
      padding: EdgeInsets.all(8),
      child: SvgPicture.asset(
        svgPath,
        fit: BoxFit.fill,
      ),
    );
  }
}
