part of 'quotes_cubit.dart';

@immutable
class QuotesState {
  const QuotesState({
    required this.id,
    required this.authorId,
    required this.quote,
  });
  final int id;
  final int authorId;
  final String quote;
}
