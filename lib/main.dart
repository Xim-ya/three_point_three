import 'package:flutter/material.dart';
import 'package:three_point_three/src/constant/app_size.dart';
import 'package:three_point_three/src/constant/app_theme.dart';
import 'package:three_point_three/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.basicTheme,
      home: const HomePage(),
      builder: (context, child) {
        AppSize.to.init(context);
        return child!;
      },
    );
  }
}
