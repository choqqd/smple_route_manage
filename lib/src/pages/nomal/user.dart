import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smple_route_manage/src/home.dart';
import 'package:smple_route_manage/src/pages/nomal/first.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요"),
            Text("${Get.parameters['age']}"),
            TextButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
