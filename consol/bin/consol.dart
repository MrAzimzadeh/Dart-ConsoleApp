import 'dart:io';
import 'package:test/test.dart';

void main(List<String> arguments) {
  int? result = convertToInt('as');
  if (result != null) {
    String customResult = result.customMethod();
    print(customResult);
  } else {
    print('');
  }
}

extension CustomMethods on int {
  String customMethod() {
    return 'Hello world!';
  }
}

int? convertToInt(String? value) {
  try {
    return int.parse(value!);
  } catch (e) {
    return null;
  }
}
