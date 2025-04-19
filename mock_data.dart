class Patient {
  final String name;
  final int age;
  final String status;
  final CognitiveKPI cognitive;
  final PhysicalKPI physical;

  Patient({
    required this.name,
    required this.age,
    required this.status,
    required this.cognitive,
    required this.physical,
  });
}

class CognitiveKPI {
  final int memoryScore;
  final int attentionScore;
  final int problemSolvingScore;

  CognitiveKPI({
    required this.memoryScore,
    required this.attentionScore,
    required this.problemSolvingScore,
  });
}

class PhysicalKPI {
  final int mobilityScore;
  final int strengthScore;
  final int balanceScore;

  PhysicalKPI({
    required this.mobilityScore,
    required this.strengthScore,
    required this.balanceScore,
  });
}

List<Patient> mockPatients = [
  Patient(
    name: 'John Doe',
    age: 75,
    status: 'Stable',
    cognitive: CognitiveKPI(memoryScore: 80, attentionScore: 70, problemSolvingScore: 75),
    physical: PhysicalKPI(mobilityScore: 85, strengthScore: 80, balanceScore: 78),
  ),
  Patient(
    name: 'Alice Smith',
    age: 72,
    status: 'Moderate',
    cognitive: CognitiveKPI(memoryScore: 65, attentionScore: 60, problemSolvingScore: 62),
    physical: PhysicalKPI(mobilityScore: 70, strengthScore: 65, balanceScore: 68),
  ),
  Patient(
    name: 'David Lee',
    age: 78,
    status: 'Stable',
    cognitive: CognitiveKPI(memoryScore: 90, attentionScore: 85, problemSolvingScore: 88),
    physical: PhysicalKPI(mobilityScore: 90, strengthScore: 88, balanceScore: 85),
  ),
  Patient(
    name: 'Maria Garcia',
    age: 80,
    status: 'Critical',
    cognitive: CognitiveKPI(memoryScore: 45, attentionScore: 50, problemSolvingScore: 40),
    physical: PhysicalKPI(mobilityScore: 55, strengthScore: 50, balanceScore: 52),
  ),
  Patient(
    name: 'Chen Wei',
    age: 74,
    status: 'Stable',
    cognitive: CognitiveKPI(memoryScore: 75, attentionScore: 72, problemSolvingScore: 70),
    physical: PhysicalKPI(mobilityScore: 78, strengthScore: 76, balanceScore: 80),
  ),
];
