import 'package:flutter/material.dart';
import 'package:three_point_three/src/constant/app_size.dart';
import 'package:three_point_three/src/constant/app_theme.dart';
import 'package:three_point_three/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '삼쩜삼',
      theme: AppTheme.basicTheme,
      home: const HomePage(),
      builder: (context, child) {
        AppSize.to.init(context);
        return child!;
      },
    );
  }
}
