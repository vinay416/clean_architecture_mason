import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';

//Todo: define usecases (like below)

class {{feature_name.pascalCase()}}Usecase{
    const {{feature_name.pascalCase()}}Usecase({required this.repository});
    final {{feature_name.pascalCase()}}Repository repository;  

   Future<Either<Failure, {{feature_name.pascalCase()}}Entity>> call() async {
        throw UnimplementedError();
   }
}