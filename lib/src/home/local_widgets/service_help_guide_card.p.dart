part of '../home_page.dart';

class _ServiceHelpGuideCard extends StatelessWidget {
  const _ServiceHelpGuideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '심야님을 위한 도움말',
          style: AppTextStyle.headline2.copyWith(
            color: AppColor.black,
          ),
        ),
        AppGap.dimension20,
        BounceTapper(
          onTap: () {},
          child: RoundedShadowCard(
            padding: const EdgeInsets.fromLTRB(20, 24, 16, 20),
            child: Column(
              children: <Widget>[
                ...List.generate(
                  ServiceHelpGuide.values.length,
                  (index) {
                    final item = ServiceHelpGuide.values[index];

                    return Container(
                      margin: EdgeInsets.only(
                          bottom: index != ServiceHelpGuide.values.length - 1
                              ? 20
                              : 0),
                      child: Row(
                        children: [
                          Image.asset(
                            item.iconPath,
                            width: 48,
                          ),
                          AppGap.dimension16,
                          Expanded(
                            child: Text(
                              item.description,
                              style: AppTextStyle.regular16.copyWith(
                                color: AppColor.grey900,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            AppAsset.rightArrow,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                AppGap.dimension30,
                BounceTapper(
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () async {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                      child: const Text('도움 되는 이야기 더보기'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
