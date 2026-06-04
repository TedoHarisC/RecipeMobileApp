import 'package:recipe_app/core/local_storage/local_storage.dart';

abstract class AuthLocalDataSource {}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final LocalStorage localStorage;

  AuthLocalDataSourceImpl(this.localStorage);
}
