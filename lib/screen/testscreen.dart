

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/providers/test_provider.dart';
import 'package:testflutter/widgets/abstracttest.dart';

class TestScreen extends StatelessWidget {

  // route name of this screen
  static const routeName = '/test-detail';


  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String testIdName =
       ModalRoute.of(context)?.settings.arguments as String ;

    AbstractTest? widgetTest = Provider.of<TestProvider>(context, listen: false).getWidgetTestById(testIdName);

    return Scaffold(
      appBar: AppBar(
        title: Text(widgetTest.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [widgetTest],
        ),
      ),
    );
  }
}
