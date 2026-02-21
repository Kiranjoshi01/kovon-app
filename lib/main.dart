import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // HEADER
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Kovon",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),

            // HERO SECTION
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    "Find Your Dream Career",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Explore opportunities and connect with top companies.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Explore Opportunities"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // FEATURES SECTION
            Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  featureCard(width),
                  featureCard(width),
                  featureCard(width),
                  featureCard(width),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // HOW IT WORKS
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How It Works",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  StepWidget(number: 1, text: "Create your profile"),
                  StepWidget(number: 2, text: "Explore opportunities"),
                  StepWidget(number: 3, text: "Apply to jobs"),
                  StepWidget(number: 4, text: "Grow your career"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // FOOTER
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  Text(
                    "© 2026 Kovon. All rights reserved.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.email, color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget featureCard(double width) {
    return Container(
      width: width / 2 - 24,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.work, size: 30),
          SizedBox(height: 10),
          Text(
            "Feature Title",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text("Short description of the feature."),
        ],
      ),
    );
  }
}

class StepWidget extends StatelessWidget {
  final int number;
  final String text;

  const StepWidget({
    super.key,
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(number.toString()),
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}