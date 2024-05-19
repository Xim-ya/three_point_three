import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:three_point_three/src/constant/app_asset.dart';
import 'package:three_point_three/src/constant/app_color.dart';
import 'package:three_point_three/src/constant/app_gap.dart';
import 'package:three_point_three/src/constant/app_size.dart';
import 'package:three_point_three/src/constant/app_text_style.dart';
import 'package:three_point_three/src/constant/enum/service_help_guide.e.dart';
import 'package:three_point_three/src/home/local_widgets/illus_leading_card.dart';
import 'package:three_point_three/src/widget/card/rounded_shadow_card.dart';
import 'package:three_point_three/src/widget/card/scale_transition_detector.dart';

part 'local_widgets/alert_container.p.dart';
part 'local_widgets/app_bar.p.dart';
part 'local_widgets/banner_slider.p.dart';
part 'local_widgets/business_vat_card.p.dart';
part 'local_widgets/comprehensive_income_card_view.p.dart';
part 'local_widgets/family_tax_refund_card.p.dart';
part 'local_widgets/service_help_guide_card.p.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey600,
      appBar: _AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _BannerSlider(),
            AppGap.dimension16,
            _AlertContainer(),
            AppGap.dimension50,
            _ComprehensiveIncomeCardView(),
            AppGap.dimension14,
            ScaleTransitionDetector(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              onTap: () {},
              child: _FamilyTaxRefundCard(),
            ),
            AppGap.dimension16,
            _BusinessVatCard(),
            AppGap.dimension50,
            _ServiceHelpGuideCard(),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
