import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:three_point_three/src/constant/index.dart';
import 'package:three_point_three/src/widget/card/rounded_shadow_card.dart';

class IllusLeadingCard extends StatelessWidget {
  const IllusLeadingCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.iconPath});

  final String title;
  final String subTitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return RoundedShadowCard(
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 22,
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            iconPath,
            fit: BoxFit.contain,
            width: 38,
          ),
          AppGap.dimension20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: AppTextStyle.bold16
                    .copyWith(height: 0, color: AppColor.black),
              ),
              AppGap.dimension6,
              Text(
                subTitle,
                style: AppTextStyle.regular14.copyWith(
                  color: AppColor.grey300,
                ),
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            AppAsset.rightArrow,
          ),
        ],
      ),
    );
  }
}
