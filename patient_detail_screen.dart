import 'package:flutter/material.dart';

class PatientDetailScreen extends StatelessWidget {
  final String patientName;

  const PatientDetailScreen({super.key, required this.patientName});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('$patientName\'s Health KPIs'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Cognitive'),
              Tab(text: 'Physical'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CognitiveKPIView(),
            PhysicalKPIView(),
          ],
        ),
      ),
    );
  }
}

class CognitiveKPIView extends StatelessWidget {
  const CognitiveKPIView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        KPIInfoCard(title: 'Short-term Memory Score', value: '85%'),
        KPIInfoCard(title: 'Verbal Fluency', value: '32 wpm'),
        KPIInfoCard(title: 'Hesitation Rate', value: '5 pauses/min'),
        KPIInfoCard(title: 'Sentence Complexity', value: 'Rich'),
        KPIInfoCard(title: 'Mood Trend', value: '🙂 🙂 😐 🙂'),
      ],
    );
  }
}

class PhysicalKPIView extends StatelessWidget {
  const PhysicalKPIView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        KPIInfoCard(title: 'Sleep (last 7 days)', value: '6.5 hrs'),
        KPIInfoCard(title: 'Fall Alerts (30 days)', value: '2'),
        KPIInfoCard(title: 'GPS Status', value: 'Safe Zone'),
        KPIInfoCard(title: 'Heart Rate Trend', value: '76 bpm'),
        KPIInfoCard(title: 'Step Count', value: '7,432'),
        KPIInfoCard(title: 'Emergency Alerts', value: '0'),
      ],
    );
  }
}

class KPIInfoCard extends StatelessWidget {
  final String title;
  final String value;

  const KPIInfoCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(height: 8),
            Text(value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
