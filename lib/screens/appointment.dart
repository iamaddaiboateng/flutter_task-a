import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_a/utils/colors.dart';

import '../widgets/app_home_header.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.schedule_send),
      ),
      appBar: AppBar(
        title: const Text("Appointments"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          AppHomeHeader(
              header: "Next Appointment",
              subHeader:
                  "You have an appointment with Dr. ABC on Mon, 23rd June, 2021 at 4:00pm",
              color: Colors.blue),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorUtil.randomColor(),
                    foregroundColor: Colors.white,
                    child: const Icon(
                      Icons.schedule,
                    ),
                  ),
                  title: const Text("DR. ABC"),
                  subtitle: const Text(
                    "Mon, 12th July, 2023. @ 4:00pm",
                    style: TextStyle(color: Colors.blue),
                  ),
                );
              })
        ],
      ),
    );
  }
}
