import 'package:three_point_three/src/constant/index.dart';

enum ServiceHelpGuide {
  expectRefundAmount('예상 환급액, 진짜 환급되나요?', AppAsset.talk),
  reasonWhyReportOnMay('5월에 세금 신고 안 하면 생기는 일', AppAsset.showCard),
  mythsAndFacts('삼쩜삼 세무대리인 오해와 진실(23년도 폐지)', AppAsset.holdingMoney);

  final String description;
  final String iconPath;

  const ServiceHelpGuide(this.description, this.iconPath);
}
