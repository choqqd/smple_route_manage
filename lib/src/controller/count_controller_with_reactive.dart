import 'package:get/get.dart';

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  void increase() {
    count++;
    _double(424);
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경 한번만 호출"), time: Duration(seconds: 1));
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
