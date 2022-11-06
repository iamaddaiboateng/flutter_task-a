import 'package:flutter/material.dart';
import 'package:flutter_task_a/utils/colors.dart';
import 'package:flutter_task_a/utils/text_styles.dart';

class MedicationPage extends StatefulWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  State<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medication"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorUtil.randomColor(),
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.medication),
                  ),
                  title: Text(
                    "Paracetamol",
                    style: TextStyles.medium(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "by Dr. ABC\nMon, 26th Mar, 2022",
                    style: TextStyles.caption(context),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "Dosage",
                        style: TextStyles.caption(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        "2 tablets, 3 times daily",
                        style: TextStyles.medium(context),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Continue till",
                        style: TextStyles.caption(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        "Mon, 12th July, 2023",
                        style: TextStyles.medium(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
