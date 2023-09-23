import 'package:flutter/material.dart';
import '../controller/readapimodel_controller.dart';
import 'package:latihan_getx/core.dart';
import 'package:get/get.dart';

class ReadapimodelView extends StatelessWidget {
  const ReadapimodelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReadapimodelController>(
      init: ReadapimodelController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Readapimodel"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "Api dengan Model",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  ListView.builder(
                    itemCount: controller.item.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.item[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            item.avatar!,
                          ),
                        ),
                        title: Text(item.firstName ?? ''),
                        subtitle: Text(item.email ?? ''),
                        trailing: const Icon(
                          Icons.add,
                          size: 24.0,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
