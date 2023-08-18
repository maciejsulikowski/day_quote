import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('DayQuote'),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.question_mark, // Ikona znaku zapytania
                  size: 150,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 80),
            const Text('Kliknij wyżej żeby wylosować cytat!'),
          ],
        ),
      ),
    );
  }
}
