import 'package:flutter/material.dart';
import '../controller/readapi_controller.dart';
import 'package:latihan_getx/core.dart';
import 'package:get/get.dart';

class ReadapiView extends StatelessWidget {
  const ReadapiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReadapiController>(
      init: ReadapiController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Membaca Api Tanpa Model"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Text(
                  "Daftar Nama",
                  style: TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.item.length,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.item[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            item['avatar'],
                          ),
                        ),
                        title: Text(item['first_name']),
                        subtitle: Text(item['email']),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
