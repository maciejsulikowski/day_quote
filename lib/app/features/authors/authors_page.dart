import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/features/authors/cubit/authors_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({
    required this.quotesModel,
    super.key,
  });
  final QuotesModel quotesModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthorsCubit(
          AuthorsRepository(RemoteAuthorsRetrofitDataSource(Dio())))
        ..getAuthors(quotesModel.authorId),
      child: BlocBuilder<AuthorsCubit, AuthorsState>(
        builder: (context, state) {
          return AuthorPageContent(authorsModel: state.authorsModel);
        },
      ),
    );
  }
}

class AuthorPageContent extends StatelessWidget {
  const AuthorPageContent({
    required this.authorsModel,
    super.key,
  });

  final List<AuthorsModel> authorsModel;
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
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: ListView(
          children: [
            for (final author in authorsModel) ...[
              const SizedBox(
                height: 50,
              ),
              Center(
                child: CachedNetworkImage(
                  imageUrl: author.authorPhoto,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  imageBuilder: (context, imageProvider) {
                    return CircleAvatar(
                      radius: 100,
                      backgroundImage: imageProvider,
                    );
                  },
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Źródło: ${author.source}',
                    style: GoogleFonts.buenard(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  author.story,
                  style: GoogleFonts.buenard(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
