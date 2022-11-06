import 'package:flutter/material.dart';
import 'package:flutter_task_a/utils/text_styles.dart';

class ProfileStatsCard extends StatelessWidget {
  final String counts, label;
  const ProfileStatsCard({required this.counts, required this.label, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 104,
      height: 88,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counts,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Text(label, style: TextStyles.caption(context))
          ],
        ),
      ),
    );
  }
}
