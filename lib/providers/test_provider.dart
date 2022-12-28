

import 'dart:html';


import 'package:flutter/material.dart';

import 'package:testflutter/widgets/audio_test.dart';

import '../widgets/abstracttest.dart';

class TestProvider with ChangeNotifier{

  final Map<String, AbstractTest> _testWidgetMapByIdName ={};

  TestProvider(){
   _testWidgetMapByIdName.putIfAbsent('Audio Test', () => const AudioTest());
  }

  List<AbstractTest> get

  AbstractTest getWidgetTestById(String testIdName) {

    if ( _testWidgetMapByIdName.containsKey(testIdName)){
      return _testWidgetMapByIdName[testIdName] as AbstractTest;
    }
    return const AbstractTest(testName: 'No test found ');

  }




}