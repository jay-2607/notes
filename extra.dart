import 'package:flutter/material.dart';

main() {
  print("Main Program Started");
  printFileContent();
  print("Main Program ended");

}

printFileContent() async {
  String data= await downloadFileContent();
  print(data);
}

Future<String> downloadFileContent() {
  Future<String> content = Future.delayed(
    const Duration(seconds: 6),
    () {
      return "File content has downloaded";
    },
  );

  return content;

}
