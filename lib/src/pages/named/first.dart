import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smple_route_manage/src/pages/nomal/second.dart';

class FirstNamedtPage extends StatelessWidget {
  const FirstNamedtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.toNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}
