part of 'all_news_cubit.dart';

@immutable
sealed class AllNewsState {}

final class AllNewsInitial extends AllNewsState {}

final class GetNewsLoading extends AllNewsState {}

final class GetNewsSuccess extends AllNewsState {
  final AllNews response;
  GetNewsSuccess({required this.response});
}

final class GetNewsError extends AllNewsState {}
