import 'package:mason_demo/features/{{{feature_name.snakeCase()}}}/domain/repository/{{{feature_name.snakeCase()}}}_repository.dart';
import 'package:mason_demo/features/{{{feature_name.snakeCase()}}}/data/data_source/{{{feature_name.snakeCase()}}}_local_data_source.dart';
import 'package:mason_demo/features/{{{feature_name.snakeCase()}}}/data/data_source/{{{feature_name.snakeCase()}}}_remote_data_source.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository{
    const {{feature_name.pascalCase()}}RepositoryImpl({required this.remoteDataSource, required this.localDataSource});
    final {{feature_name.pascalCase()}}RemoteDataSource remoteDataSource;
    final {{feature_name.pascalCase()}}LocalDataSource localDataSource;

}