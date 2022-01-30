
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnui1/body.dart';

void main(){
  return runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Body(),

    );
  }
}
