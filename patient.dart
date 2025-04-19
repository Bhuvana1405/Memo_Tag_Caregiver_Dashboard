import 'package:flutter/material.dart';

class PatientDetailScreen extends StatelessWidget {
  final String name;
  final int age;
  final String status;

  const PatientDetailScreen({
    Key? key,
    required this.name,
    required this.age,
    required this.status,
  }) : super(key: key);

  Widget _buildKpiTile(String title, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.grey.shade300,
          color: Colors.indigo,
          minHeight: 8,
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Age: $age', style: const TextStyle(fontSize: 18)),
            Text('Status: $status', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),

            Text('Cognitive KPIs', style: Theme.of(context).textTheme.titleLarge),
            _buildKpiTile('Memory', 0.7),
            _buildKpiTile('Attention', 0.8),
            _buildKpiTile('Speech', 0.6),

            const SizedBox(height: 20),
            Text('Physical KPIs', style: Theme.of(context).textTheme.titleLarge),
            _buildKpiTile('Gait Stability', 0.9),
            _buildKpiTile('Strength', 0.5),
            _buildKpiTile('Balance', 0.8),
          ],
        ),
      ),
    );
  }
}
