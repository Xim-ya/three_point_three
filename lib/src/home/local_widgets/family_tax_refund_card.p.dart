part of '../home_page.dart';

class _FamilyTaxRefundCard extends StatelessWidget {
  const _FamilyTaxRefundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const IllusLeadingCard(
      title: '가족환급 신청',
      subTitle: '가족끼리 묶고 더 환급받기',
      iconPath: AppAsset.family,
    );
  }
}
