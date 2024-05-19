part of '../home_page.dart';

class _BusinessVatCard extends StatelessWidget {
  const _BusinessVatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const IllusLeadingCard(
      title: '사업자 부가세',
      subTitle: '30%',
      iconPath: AppAsset.calculator,
    );
  }
}
