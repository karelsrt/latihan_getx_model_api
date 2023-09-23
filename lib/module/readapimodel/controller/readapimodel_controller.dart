import 'package:get/get.dart';
import 'package:latihan_getx/module/readapimodel/model/responmodel.dart';
import 'package:latihan_getx/module/readapimodel/service/servicemodel.dart';
import '../view/readapimodel_view.dart';

class ReadapimodelController extends GetxController {
  @override
  void onInit() {
    doLoad();
    super.onInit();
  }

  ReadapimodelView? view;

  List<Datum> item = [];

  Future doLoad() async {
    var respon = await ServiceModel().serviceModel();
    item = respon.data ?? [];
    update();
  }
}
