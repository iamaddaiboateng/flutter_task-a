import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class AppHomeHeader extends StatelessWidget {
  final String header, subHeader;
  final Color color;

  AppHomeHeader({
    required this.header,
    required this.subHeader,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              radius: 20,
              foregroundColor: Colors.white,
              child: const Icon(
                Icons.schedule,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    header,
                    style: TextStyles.subtitle(context).copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    subHeader,
                    maxLines: 2,
                    style: TextStyles.body1(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> headerTitles = [
  'No more sheets',
  'Data Analysis',
  // 'Easy SMS Communication',
  'Sales Report'
];

List<String> headerSubTitle = [
  'Record your sales and expenses with ease',
  'Analyze your data and see trends',
  // "Commuincate with your Customers with our inbuilt bulk SMS service",
  'Get sales reports of your business within any time frame'
];

List<Color> headerColors = [
  Colors.teal.shade700,
  Colors.blue.shade700,
  // Colors.deepOrange.shade700,
  Colors.deepPurple.shade700
];

List<AppHomeHeader> appHomeHeaders = List.generate(
  headerTitles.length,
  (index) => AppHomeHeader(
    header: headerTitles[index],
    subHeader: headerSubTitle[index],
    color: headerColors[index],
  ),
);
