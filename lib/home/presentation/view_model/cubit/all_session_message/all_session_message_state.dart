part of 'all_session_message_cubit.dart';

@immutable
sealed class AllSessionMessageState {}

final class AllSessionMessageInitial extends AllSessionMessageState {}
final class AllSessionMessageSuccess extends AllSessionMessageState {}
