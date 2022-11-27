import 'package:flutter/material.dart';

import '../shared.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final Gradient? gradient;
  final double width;
  final double height;
  final Function? onPressed;
  final Color color;

  const BaseButton({
    Key? key,
    this.text = "",
    this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
    required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 64.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: hexToColor('#E5F5FF'),
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Center(
            child: text != ""
                ? Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: CommonConstants.smallText,
                    ),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
