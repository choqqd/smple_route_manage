import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smple_route_manage/src/home.dart';
import 'package:smple_route_manage/src/pages/nomal/first.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                Get.back();
              },
            ),
            TextButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
