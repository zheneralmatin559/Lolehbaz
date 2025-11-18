import 'package:flutter/material.dart';

void main() {
  runApp(const WalkTrackerApp());
}

class WalkTrackerApp extends StatelessWidget {
  const WalkTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walk Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
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
  int steps = 0;

  void addStep() {
    setState(() => steps++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Walk Tracker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Steps: $steps', style: const TextStyle(fontSize: 32)),
            ElevatedButton(
              onPressed: addStep,
              child: const Text('Add Step'),
            )
          ],
        ),
      ),
    );
  }
}
