import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smple_route_manage/src/pages/nomal/first.dart';
import 'package:smple_route_manage/src/pages/reactive_state_manage_page.dart';
import 'package:smple_route_manage/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                Get.to(FirstPage());
              },
            ),
            TextButton(
              child: Text("Named 라우트"),
              onPressed: () {
                Get.toNamed("/first");
              },
            ),
            TextButton(
              child: Text("Argument 전달"),
              onPressed: () {
                Get.toNamed("/next", arguments: User(name: "개발하는 남자", age: 22));
              },
            ),
            TextButton(
              child: Text("동적 url"),
              onPressed: () {
                Get.toNamed("/user/28357?name=개남&age=22");
              },
            ),
            TextButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            TextButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({
    required this.name,
    required this.age,
  });
}
