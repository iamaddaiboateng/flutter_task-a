import 'package:flutter/material.dart';
import 'package:flutter_task_a/screens/appointment.dart';
import 'package:flutter_task_a/screens/home_page.dart';
import 'package:flutter_task_a/screens/medication.dart';
import 'package:flutter_task_a/screens/specialist.dart';
import 'package:flutter_task_a/screens/symptoms_log.dart';

class TabsPages extends StatefulWidget {
  const TabsPages({Key? key}) : super(key: key);

  @override
  State<TabsPages> createState() => _TabsPagesState();
}

class _TabsPagesState extends State<TabsPages> {
  int selectedPage = 0;

  List<Widget> pages = [
    const HomePage(),
    const SpecialistPage(),
    const AppointmentsPage(),
    const MedicationPage(),
    const SymptomsLog(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedPage,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: "Specialist"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.schedule,
              ),
              label: "Appointment"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.medication,
              ),
              label: "Medication"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note_alt_sharp,
              ),
              label: "Symptoms"),
        ],
      ),
      body: pages[selectedPage],
    );
  }
}
