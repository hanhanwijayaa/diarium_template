part of '{{name.lowerCase()}}_cubit.dart';

@immutable
abstract class {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class OnLoadingGet{{name.pascalCase()}} extends {{name.pascalCase()}}State {}

class OnErrorGet{{name.pascalCase()}} extends {{name.pascalCase()}}State {
  final int? errorCode;
  final String? errorType;
  final String? errorMessage;

  OnErrorGet{{name.pascalCase()}}({this.errorCode, this.errorType, this.errorMessage});
}

class OnSuccessGet{{name.pascalCase()}} extends {{name.pascalCase()}}State {
  final {{name.pascalCase()}}Model? data;

  OnSuccessGet{{name.pascalCase()}}({required this.data});
}