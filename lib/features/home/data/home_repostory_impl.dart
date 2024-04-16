  
   
import 'package:animals_checker_get/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:animals_checker_get/features/home/domain/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;
 
}
