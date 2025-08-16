// ignore_for_file: avoid_print

import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:example/pages/second_page/page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLightMode = context.isLightMode;
    final isDarkMode = context.isDarkMode;
    print('isLightMode: $isLightMode');
    print('isDarkMode: $isDarkMode');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: context.textStyles.titleLarge.bold.copyWith(
            color: context.colors.scheme.onSurface,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: context.textStyles.bodyLarge.extraBold.italic,
            ),
            Text(
              '$_counter',
              style: context.textStyles.headlineMedium.medium,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.navigator.pushMaterial(const SecondPage());
              },
              child: const Text('Go to second page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
