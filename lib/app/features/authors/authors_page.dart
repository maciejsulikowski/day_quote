import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/features/authors/cubit/authors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({
    required this.quotesModel,
    super.key,
  });
  final QuotesModel quotesModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthorsCubit(AuthorsRepository(RemoteAuthorsDataSource()))
            ..getAuthors(),
      child: BlocBuilder<AuthorsCubit, AuthorsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.purpleAccent,
            appBar: AppBar(
              title: const Text(
                'Powrót',
              ),
              backgroundColor: Colors.purple[300],
            ),
            body: Center(
              child: ListView(
                children: [
                  for (final author in state.authorsModel) ...[
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          author.source,
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 100,
                      child: Text(author.authorPhoto),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(author.story),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
