import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:diarium/lib.dart';
import '../model/model.dart';
import '../service/service.dart';

part '{{name.lowerCase()}}2_state.dart';

class {{name.pascalCase()}}2Cubit extends Cubit<{{name.pascalCase()}}2State> {
  {{name.pascalCase()}}2Cubit() : super({{name.pascalCase()}}2Initial());
  final {{name.pascalCase()}}2Service _service = {{name.pascalCase()}}2Service();

  void get{{name.pascalCase()}}2({String? nik}) async {
    emit(OnLoadingGet{{name.pascalCase()}}2());
    try {
      var res = await _service.get{{name.pascalCase()}}2();
      try {
        if (res.statusCode == 200) {
          var _data = {{name.pascalCase()}}2Model.fromJson(res.data);
          debugPrintSuccess(text: '{{name.pascalCase()}}2 Status : Success');
          emit(OnSuccessGet{{name.pascalCase()}}2(data: _data));
        } else {
          emit(OnErrorGet{{name.pascalCase()}}2(
              errorCode: res.statusCode,
              errorType: "{{name.pascalCase()}}2",
              errorMessage: res.toString()));
        }
      } catch (e) {
        sendErrorReport(res: res, e: e, action: "{{name.pascalCase()}}2");
        emit(OnErrorGet{{name.pascalCase()}}2(
            errorCode: res.statusCode,
            errorType: "{{name.pascalCase()}}2",
            errorMessage: "{{name.pascalCase()}}2 " + e.toString()));
      }
    } catch (e) {
      emit(OnErrorGet{{name.pascalCase()}}2(
          errorCode: 500,
          errorType: "{{name.pascalCase()}}2",
          errorMessage: "{{name.pascalCase()}}2 Internal Server Error"));
    }
  }
}
