part of '../home_page.dart';

class _AlertContainer extends StatelessWidget {
  const _AlertContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.lightRed,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: Row(
        children: <Widget>[
          Image.asset(
            width: 22,
            height: 22,
            AppAsset.roundedAlert,
          ),
          AppGap.dimension16,
          Expanded(
            child: Text(
              '매일 0시 ~ 6시는 홈택스 점검시간으로 일부 기능이 제한될 수 있어요.',
              style: AppTextStyle.regular14.copyWith(
                color: AppColor.grey900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
