part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}Event extends Equatable {
  const  {{feature_name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

final class {{feature_name.pascalCase()}}InitialEvent extends {{feature_name.pascalCase()}}Event {
}