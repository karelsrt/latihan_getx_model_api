import 'package:dio/dio.dart';

class BacaApi {
  lihatApi() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;

    return obj;
  }
}
