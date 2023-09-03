import 'dart:math';
import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/authors/authors_page.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuotesCubit(QuotesRepository(RemoteQuotesDataSource()))..getQuotes(),
      child: BlocBuilder<QuotesCubit, QuotesState>(
        builder: (context, state) {
          final quotesModel = state.quotesModel;
          if (quotesModel.isEmpty) {
            return const LoadingQuotePage();
          }
          final result = quotesModel[Random().nextInt(quotesModel.length)];
          return QuotePageContent(result: result);
        },
      ),
    );
  }
}

class LoadingQuotePage extends StatelessWidget {
  const LoadingQuotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purpleAccent[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              const SizedBox(height: 16),
              Text(
                'Ładowanie',
                style: GoogleFonts.buenard(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuotePageContent extends StatelessWidget {
  const QuotePageContent({
    super.key,
    required this.result,
  });

  final QuotesModel result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[400],
      appBar: AppBar(
        title: Text(
          'Powrót',
          style: GoogleFonts.buenard(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                result.authorName,
                style: GoogleFonts.buenard(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                result.quote,
                style: GoogleFonts.buenard(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => AuthorsPage(
                        quotesModel: result,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Poznaj historię autora 🔍',
                  style: GoogleFonts.buenard(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
