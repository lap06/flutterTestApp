

import 'package:flutter/material.dart';
import 'package:testflutter/widgets/abstracttest.dart';

class AudioTest extends AbstractTest {
  const AudioTest({Key? key}) : super(testName:'Audio Test',key: key);

  @override
  State<AudioTest> createState() => _AudioTestState();


}

class _AudioTestState extends State<AudioTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Audio test'),
    );
  }


}

