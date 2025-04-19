import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Patients')),
      body: ListView.builder(
        itemCount: 5, // dummy patient count
        itemBuilder: (context, index) => ListTile(
          title: Text('Patient ${index + 1}'),
          subtitle: const Text('Age: 75 | Status: Stable'),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Patient ${index + 1} tapped')),
            );
          },
        ),
      ),
    );
  }
}
