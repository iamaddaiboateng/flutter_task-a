import 'package:flutter/material.dart';
import 'package:flutter_task_a/widgets/app_home_header.dart';

import '../widgets/stats_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            color: const Color(0xfff6f6f6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProfileStatsCard(
                  counts: "120/80",
                  label: 'Blood Pressure',
                ),
                ProfileStatsCard(
                  counts: "33 C",
                  label: "Temperature",
                ),
                ProfileStatsCard(
                  counts: '123',
                  label: 'Pulse',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AppHomeHeader(
            header: "Next Appointment",
            subHeader:
                "You have an appointment with Dr. ABC on Mon, 23rd June, 2021 at 4:00pm",
            color: Colors.blue,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Recent Activities",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.schedule,
              ),
            ),
            title: Text("New Appointment"),
            subtitle: Text(
              "Appointment",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.medication,
              ),
            ),
            title: Text("New Medications Add"),
            subtitle: Text(
              "Medication",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.schedule,
              ),
            ),
            title: Text("New Appointment"),
            subtitle: Text(
              "Appointment",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.medication,
              ),
            ),
            title: Text("New Medications Add"),
            subtitle: Text(
              "Medication",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.schedule,
              ),
            ),
            title: Text("New Appointment"),
            subtitle: Text(
              "Appointment",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.medication,
              ),
            ),
            title: Text("New Medications Add"),
            subtitle: Text(
              "Medication",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.schedule,
              ),
            ),
            title: Text("New Appointment"),
            subtitle: Text(
              "Appointment",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.medication,
              ),
            ),
            title: Text("New Medications Add"),
            subtitle: Text(
              "Medication",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
