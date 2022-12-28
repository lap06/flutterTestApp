

import 'package:flutter/cupertino.dart';

class AbstractTest extends StatefulWidget {

  final String testName;
  const AbstractTest({ required this.testName,Key? key}): super(key: key);

  @override
  State<AbstractTest> createState() => _AbstractTestState();


  String get title {
    return testName;
  }

}

class _AbstractTestState extends State<AbstractTest> {

  @override
  Widget build(BuildContext context) {
    return Text('$widget._testName');
  }
}
