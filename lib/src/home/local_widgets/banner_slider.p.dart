part of '../home_page.dart';

class _BannerSlider extends StatelessWidget {
  const _BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: PageView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Image.asset(
            AppAsset.banner0,
            fit: BoxFit.fitWidth,
          );
        },
      ),
    );
  }
}
