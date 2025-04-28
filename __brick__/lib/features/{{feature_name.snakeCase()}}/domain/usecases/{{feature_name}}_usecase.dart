import 'package:mason_demo/features/{{{feature_name.snakeCase()}}}/domain/repository/{{{feature_name.snakeCase()}}}_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mason_demo/core/failure.dart';
import 'package:mason_demo/features/{{{feature_name.snakeCase()}}}/domain/entities/{{{feature_name.snakeCase()}}}_entity.dart';

//Todo: define usecases (like below)

class {{feature_name.pascalCase()}}Usecase{
    const {{feature_name.pascalCase()}}Usecase({required this.repository});
    final {{feature_name.pascalCase()}}Repository repository;  

   Future<Either<Failure, {{feature_name.pascalCase()}}Entity>> call() async {
        throw UnimplementedError();
   }
}