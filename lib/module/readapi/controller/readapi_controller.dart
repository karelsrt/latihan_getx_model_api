import 'package:get/get.dart';
import 'package:latihan_getx/module/readapi/service/servicebacaapi.dart';
import '../view/readapi_view.dart';

class ReadapiController extends GetxController {
  ReadapiView? view;

  @override
  void onInit() {
    bacaApi();
    super.onInit();
  }

  List item = [];

  bacaApi() async {
    var respon = await BacaApi().lihatApi();

    item = respon['data'];

    print(item);

    update();
  }
}
