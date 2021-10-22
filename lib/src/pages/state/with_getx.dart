import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smple_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 50)),
          GetBuilder<CountControllerWithGetx>(builder: (controller) {
            print("UPDATE");
            return Text("${controller.count}", style: TextStyle(fontSize: 50));
          }),
          TextButton(
            onPressed: () {
              Get.find<CountControllerWithGetx>().increase();
            },
            child: Text("+", style: TextStyle(fontSize: 30)),
          ),
          TextButton(
            onPressed: () {
              Get.find<CountControllerWithGetx>().putNumber(5);
            },
            child: Text("5로 변경", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
