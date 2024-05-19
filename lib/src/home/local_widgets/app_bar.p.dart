part of '../home_page.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  static const double height = 66;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                AppAsset.imageLogo,
                width: 37,
              ),
              Image.asset(
                AppAsset.bell,
                width: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(height);
}
