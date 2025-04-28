import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
    //TODO: add usecases (Args)
    {{feature_name.pascalCase()}}Bloc(): super({{feature_name.pascalCase()}}InitialState()){
        on<{{feature_name.pascalCase()}}InitialEvent>(
            ({{feature_name.pascalCase()}}InitialEvent event,Emitter<{{feature_name.pascalCase()}}State> emit){}
            );
    }
}