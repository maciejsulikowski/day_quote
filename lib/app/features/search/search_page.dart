import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  SearchPage({
    super.key,
  });

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchWidget(controller: controller);
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      backgroundColor: Colors.purpleAccent[400],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Szukaj',
                style: GoogleFonts.buenard(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextField(
                controller: controller,
                style: GoogleFonts.buenard(fontSize: 18),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Wpisz coś...',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
