

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/test_provider.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testprovider = Provider.of<TestProvider>(context);
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('Available flutter test'),
      ) ,
      body: ListView.builder(itemBuilder: (ctx,i) => Column(
        children: [
          ElevatedButton(
            style: style,
            onPressed: () => {},
            child: Text(testprovider.allTestWidgets[i].title),
          ),
          const SizedBox(height: 10),
        ],
           //
      )
        , itemCount: testprovider.allTestWidgets.length ,),
    );
  }
}
