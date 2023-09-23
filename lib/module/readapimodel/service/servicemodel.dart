import 'package:dio/dio.dart';
import 'package:latihan_getx/module/readapimodel/model/responmodel.dart';

class ServiceModel {
  Future<ResponModel> serviceModel() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    return ResponModel.fromJson(response.data);
  }
}
