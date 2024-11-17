part of '../home_page.dart';

///
/// 종합 소득세 카드 뷰
///

class _TaxRefundStatusCard extends StatelessWidget {
  const _TaxRefundStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '5월 환급 받는 날',
          style: AppTextStyle.headline2.copyWith(
            color: AppColor.black,
          ),
        ),
        AppGap.dimension18,
        BounceTapper(
          child: RoundedShadowCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '종합소득세 환급',
                      style: AppTextStyle.bold14.copyWith(
                        color: AppColor.grey800,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppAsset.rightArrow,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                AppGap.dimension16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text.rich(
                      const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '심야의 환급액은'),
                          TextSpan(
                            text: '\n82,848',
                            style: TextStyle(
                              color: AppColor.blue,
                            ),
                          ),
                          TextSpan(
                            text: '원이에요',
                          )
                        ],
                      ),
                      style: AppTextStyle.bold16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Image.asset(
                        AppAsset.coin,
                        height: 36,
                        width: 36,
                      ),
                    ),
                  ],
                ),
                AppGap.dimension24,
                KeepAliveView(
                  child: Column(
                    children: [
                      /// PROGRESS BAR
                      Stack(
                        children: <Widget>[
                          /// BACKGROUND BAR
                          Container(
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor.grey700,
                            ),
                          ),

                          /// ACTIVATED BAR
                          Positioned(
                            child: Builder(builder: (context) {
                              ValueNotifier<double> targetWidth =
                                  ValueNotifier<double>(0);
                              int currentStep = 1;

                              /// DEVICE WIDTH - PARENT INSET - CARD INSET
                              final barOriginWidth =
                                  AppSize.to.screenWidth - 84;

                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                targetWidth.value =
                                    (barOriginWidth / 3) * currentStep;
                              });
                              return ValueListenableBuilder(
                                valueListenable: targetWidth,
                                builder: (context, width, _) {
                                  return AnimatedOpacity(
                                    duration: const Duration(milliseconds: 300),
                                    opacity: width == 0 ? 0 : 1,
                                    child: AnimatedContainer(
                                      duration: const Duration(
                                        milliseconds: 500,
                                      ),
                                      height: 8,
                                      width: 97,
                                      // width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColor.blue,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                        ],
                      ),
                      AppGap.dimension6,

                      /// STEP TEXT INDICATOR
                      Builder(builder: (context) {
                        const List<String> steps = [
                          '신청 전',
                          '진행 중',
                          '삼쩜삼 검토 중',
                          '신고 완료'
                        ];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ...List.generate(
                              steps.length,
                              (index) => Text(
                                steps[index],
                                style: AppTextStyle.smilBold10.copyWith(
                                  color: AppColor.grey500,
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                    ],
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
