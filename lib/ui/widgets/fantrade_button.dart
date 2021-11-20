
import 'package:fantrade/util/app_color_util.dart';
import 'package:flutter/material.dart';

class FunTradeButton extends StatelessWidget {

  final String label;
  final VoidCallback? onPressed;
  TextStyle style;
  EdgeInsetsGeometry padding;
  Color fillColor;
  double radius;
  BoxConstraints constraints;
  FunTradeButton({
    required this.label,
    required this.onPressed,
    Key? key,
    this.style = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.fillColor = AppColor.primaryColor,
    this.radius = 15,
    this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: constraints,
      padding: padding,
      fillColor: fillColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      onPressed: onPressed,
      child: Text(
        label,
        style: style,
      ),
    );
  }
}
