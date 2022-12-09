part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}


class GetTodoEvent extends TodoEvent{}