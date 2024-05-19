import 'package:flutter/material.dart';
import 'package:three_point_three/src/constant/index.dart';

class RoundedShadowCard extends StatelessWidget {
  const RoundedShadowCard(
      {super.key, required this.child, this.padding, this.margin});

  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.fromLTRB(24, 20, 24, 22),
      margin: margin,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: AppColor.grey400,
            blurRadius: 30,
            spreadRadius: 3,
          )
        ],
      ),
      child: child,
    );
  }
}
