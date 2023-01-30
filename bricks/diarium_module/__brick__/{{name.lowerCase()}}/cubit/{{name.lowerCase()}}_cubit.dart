import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../lib.dart';
import '../model/model.dart';
import '../service/service.dart';


part '{{name.lowerCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}Initial());
  final {{name.pascalCase()}}Service _service = {{name.pascalCase()}}Service();

  void get{{name.pascalCase()}}({String? nik}) async {
    emit(OnLoadingGet{{name.pascalCase()}}());
    try {
      var res = await _service.get{{name.pascalCase()}}();
      try {
        if (res.statusCode == 200) {
          var _data = {{name.pascalCase()}}Model.fromJson(res.data);
          debugPrintSuccess(text: '{{name.pascalCase()}} Status : Success');
          emit(OnSuccessGet{{name.pascalCase()}}(data: _data));
        } else {
          emit(OnErrorGet{{name.pascalCase()}}(
              errorCode: res.statusCode,
              errorType: "{{name.pascalCase()}}",
              errorMessage: res.toString()));
        }
      } catch (e) {
        sendErrorReport(res: res, e: e, action: "{{name.pascalCase()}}");
        emit(OnErrorGet{{name.pascalCase()}}(
            errorCode: res.statusCode,
            errorType: "{{name.pascalCase()}}",
            errorMessage: "{{name.pascalCase()}} " + e.toString()));
      }
    } catch (e) {
      emit(OnErrorGet{{name.pascalCase()}}(
          errorCode: 500,
          errorType: "{{name.pascalCase()}}",
          errorMessage: "{{name.pascalCase()}} " + e.toString()));
    }
  }
}
