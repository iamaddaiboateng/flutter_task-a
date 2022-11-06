import 'package:flutter/material.dart';
import 'package:flutter_task_a/utils/colors.dart';
import 'package:flutter_task_a/utils/text_styles.dart';

class SymptomsLog extends StatefulWidget {
  const SymptomsLog({Key? key}) : super(key: key);

  @override
  State<SymptomsLog> createState() => _SymptomsLogState();
}

class _SymptomsLogState extends State<SymptomsLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.note_add_outlined,
        ),
      ),
      appBar: AppBar(
        title: const Text("Symptoms Log"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: ColorUtil.randomColor(),
              foregroundColor: Colors.white,
              child: const Icon(Icons.note_alt),
            ),
            title: Text(
              "Headache",
              style: TextStyles.medium(context).copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Mon, 12th July, 2022",
              style: TextStyles.caption(context),
            ),
          );
        },
      ),
    );
  }
}
