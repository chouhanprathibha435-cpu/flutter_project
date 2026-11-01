import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int present = 0;
  int absent = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Student Attendance Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school,
                size: 80, color: Colors.blue),

            const SizedBox(height: 20),

            const Text(
              'Attendance Dashboard',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Text('Total Students: ${present + absent}',
                style: const TextStyle(fontSize: 22)),

            Text('Present: $present',
                style: const TextStyle(
                    fontSize: 22, color: Colors.green)),

            Text('Absent: $absent',
                style: const TextStyle(
                    fontSize: 22, color: Colors.red)),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  present++;
                });
              },
              child: const Text('Mark Present'),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  absent++;
                });
              },
              child: const Text('Mark Absent'),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  present = 0;
                  absent = 0;
                });
              },
              child: const Text('Reset Attendance'),
            ),
          ],
        ),
      ),
    );
  }
}