import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final String category;
  bool answer;

  Question({
    required this.questionText,
    required this.category,
    this.answer = false,
  });
}

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  final List<Question> questions = [
    // Depression
    Question(questionText: 'Do you feel sad or down most of the day?', category: 'Depression'),
    Question(questionText: 'Have you lost interest or pleasure in activities you once enjoyed?', category: 'Depression'),
    Question(questionText: 'Do you experience feelings of worthlessness or guilt?', category: 'Depression'),
    Question(questionText: 'Do you have thoughts of death or suicide?', category: 'Depression'),
    Question(questionText: 'Do you feel fatigued or have low energy nearly every day?', category: 'Depression'),

    // Anxiety
    Question(questionText: 'Do you feel nervous, anxious, or on edge?', category: 'Anxiety'),
    Question(questionText: 'Do you worry excessively about different things?', category: 'Anxiety'),
    Question(questionText: 'Do you find it hard to stop or control worrying?', category: 'Anxiety'),
    Question(questionText: 'Do you experience physical symptoms like a racing heart or sweating when anxious?', category: 'Anxiety'),
    Question(questionText: 'Do you have trouble concentrating because of worry?', category: 'Anxiety'),

    // Insomnia
    Question(questionText: 'Do you have trouble falling asleep?', category: 'Insomnia'),
    Question(questionText: 'Do you wake up frequently during the night?', category: 'Insomnia'),
    Question(questionText: 'Do you wake up too early and have trouble going back to sleep?', category: 'Insomnia'),
    Question(questionText: 'Do you feel unrefreshed after a night’s sleep?', category: 'Insomnia'),

    // Panic Disorder
    Question(questionText: 'Do you experience sudden and intense fear or discomfort?', category: 'Panic Disorder'),
    Question(questionText: 'Do you have physical symptoms like chest pain, heart palpitations, or shortness of breath during these episodes?', category: 'Panic Disorder'),
    Question(questionText: 'Do you fear having more panic attacks?', category: 'Panic Disorder'),
    Question(questionText: 'Do you avoid places or situations where you fear a panic attack might happen?', category: 'Panic Disorder'),

    // Bipolar Disorder
    Question(questionText: 'Do you experience mood swings from very high (mania) to very low (depression)?', category: 'Bipolar Disorder'),
    Question(questionText: 'During manic episodes, do you feel overly confident or euphoric?', category: 'Bipolar Disorder'),
    Question(questionText: 'During manic episodes, do you have a decreased need for sleep?', category: 'Bipolar Disorder'),
    Question(questionText: 'During depressive episodes, do you feel sad or hopeless?', category: 'Bipolar Disorder'),
    Question(questionText: 'Do these mood changes affect your ability to function at work or in social situations?', category: 'Bipolar Disorder'),

    // OCD
    Question(questionText: 'Do you have recurring, unwanted thoughts (obsessions)?', category: 'OCD'),
    Question(questionText: 'Do you feel compelled to perform certain behaviors or rituals (compulsions) to relieve these thoughts?', category: 'OCD'),
    Question(questionText: 'Do these obsessions and compulsions interfere with your daily life?', category: 'OCD'),
    Question(questionText: 'Do you spend more than an hour a day on these obsessions and compulsions?', category: 'OCD'),

    // Social Anxiety
    Question(questionText: 'Do you fear being judged or scrutinized by others in social situations?', category: 'Social Anxiety'),
    Question(questionText: 'Do you avoid social situations because of fear of embarrassment?', category: 'Social Anxiety'),
    Question(questionText: 'Do you experience physical symptoms like sweating, trembling, or a racing heart in social situations?', category: 'Social Anxiety'),
    Question(questionText: 'Do you worry excessively about social interactions?', category: 'Social Anxiety'),

    // Binge Eating Disorder
    Question(questionText: 'Do you eat an unusually large amount of food in a short period?', category: 'Binge Eating Disorder'),
    Question(questionText: 'Do you feel out of control during these eating episodes?', category: 'Binge Eating Disorder'),
    Question(questionText: 'Do you eat until you feel uncomfortably full?', category: 'Binge Eating Disorder'),
    Question(questionText: 'Do you feel disgusted, depressed, or guilty after overeating?', category: 'Binge Eating Disorder'),

    // PTSD
    Question(questionText: 'Do you have recurring memories or flashbacks of a traumatic event?', category: 'PTSD'),
    Question(questionText: 'Do you avoid situations that remind you of the traumatic event?', category: 'PTSD'),
    Question(questionText: 'Do you experience nightmares related to the traumatic event?', category: 'PTSD'),
    Question(questionText: 'Do you feel detached or estranged from others?', category: 'PTSD'),

    // ADHD
    Question(questionText: 'Do you have difficulty paying attention to details or sustaining attention?', category: 'ADHD'),
    Question(questionText: 'Do you often fidget or feel restless?', category: 'ADHD'),
    Question(questionText: 'Do you have trouble organizing tasks and activities?', category: 'ADHD'),
    Question(questionText: 'Do you frequently lose things necessary for tasks and activities?', category: 'ADHD'),
    Question(questionText: 'Do you often act impulsively without thinking?', category: 'ADHD'),

    // Internet Addiction
    Question(questionText: 'Do you spend a lot of time thinking about or planning your internet use?', category: 'Internet Addiction'),
    Question(questionText: 'Do you feel the need to use the internet for increasing amounts of time to achieve satisfaction?', category: 'Internet Addiction'),
    Question(questionText: 'Do you feel restless, moody, or irritable when trying to cut down or stop internet use?', category: 'Internet Addiction'),
    Question(questionText: 'Do you use the internet to escape from problems or to relieve a bad mood?', category: 'Internet Addiction'),
    Question(questionText: 'Have you lied to family members or others about the amount of time you spend on the internet?', category: 'Internet Addiction'),
  ];

  final Map<String, int> thresholds = {
    'Depression': 4,
    'Anxiety': 4,
    'Insomnia': 2,
    'Panic Disorder': 2,
    'Bipolar Disorder': 3,
    'OCD': 2,
    'Social Anxiety': 2,
    'Binge Eating Disorder': 2,
    'PTSD': 2,
    'ADHD': 3,
    'Internet Addiction': 3,
  };

  final Map<String, String> solutions = {
    'Depression': 'Consider talking to a therapist or counselor.',
    'Anxiety': 'Try relaxation techniques like deep breathing or meditation.',
    'Insomnia': 'Establish a regular sleep schedule and avoid screens before bed.',
    'Panic Disorder': 'Learn and practice relaxation techniques.',
    'Bipolar Disorder': 'Seek professional help for medication and therapy.',
    'OCD': 'Consider cognitive behavioral therapy (CBT).',
    'Social Anxiety': 'Gradual exposure to social situations can help.',
    'Binge Eating Disorder': 'Seek help from a nutritionist or therapist.',
    'PTSD': 'Trauma-focused therapy might be beneficial.',
    'ADHD': 'Organizational tools and professional guidance can help.',
    'Internet Addiction': 'Set boundaries and seek support if needed.',
  };

  final Map<String, Map<String, int>> severityLevels = {
    'Depression': {'begin': 1, 'moderate': 2, 'risk': 4},
    'Anxiety': {'begin': 1, 'moderate': 2, 'risk': 4},
    'Insomnia': {'begin': 1, 'moderate': 1, 'risk': 2},
    'Panic Disorder': {'begin': 1, 'moderate': 1, 'risk': 2},
    'Bipolar Disorder': {'begin': 1, 'moderate': 2, 'risk': 3},
    'OCD': {'begin': 1, 'moderate': 1, 'risk': 2},
    'Social Anxiety': {'begin': 1, 'moderate': 1, 'risk': 2},
    'Binge Eating Disorder': {'begin': 1, 'moderate': 1, 'risk': 2},
    'PTSD': {'begin': 1, 'moderate': 1, 'risk': 2},
    'ADHD': {'begin': 1, 'moderate': 2, 'risk': 3},
    'Internet Addiction': {'begin': 1, 'moderate': 2, 'risk': 3},
  };

  void analyzeResponses() {
    Map<String, int> categoryScores = {};

    for (var question in questions) {
      if (question.answer) {
        categoryScores[question.category] = (categoryScores[question.category] ?? 0) + 1;
      }
    }

    List<MapEntry<String, int>> sortedScores = categoryScores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    if (sortedScores.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Analysis Result'),
         
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    String primaryDisorder = sortedScores.first.key;
    int primaryScore = sortedScores.first.value;

    String severity = getSeverity(primaryDisorder, primaryScore);
    String analysisResult = 'Primary Disorder: $primaryDisorder\n'
        'Severity: $severity\n'
        
        'Suggested solution: ${solutions[primaryDisorder] ?? 'Consult a professional.'}';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Analysis Result'),
        content: Text(analysisResult),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  String getSeverity(String category, int score) {
    if (score >= severityLevels[category]!['risk']!) {
      return 'High risk, suggest seeing a doctor';
    } else if (score >= severityLevels[category]!['moderate']!) {
      return 'Moderate';
    } else if (score >= severityLevels[category]!['begin']!) {
      return 'Begin';
    }
    return 'Low';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Assesment'),
         backgroundColor:  Color(0xffDE6060),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions[index].questionText),
            trailing: Switch(
              value: questions[index].answer,
              onChanged: (value) {
                setState(() {
                  questions[index].answer = value;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: analyzeResponses,
        child: Icon(Icons.check,
        color:Colors.black,

      ),
       backgroundColor:Color.fromARGB(255, 92, 177, 241),
      ),
    
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: QuestionnaireScreen(),
  ));
}
