import 'package:day_quote/app/features/quotes/quotes_page.dart';
import 'package:day_quote/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'DayQuote',
                style: GoogleFonts.orienta(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const QuotePage()));
              },
              child: const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.question_mark,
                  size: 150,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Text(
              'Kliknij wyżej żeby wylosować cytat!',
              style: GoogleFonts.orienta(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
