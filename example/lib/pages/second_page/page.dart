import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second page',
          style: context.textStyles.h6.bold.copyWith(
            color: context.colors.scheme.onPrimary,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.colors.scheme.onPrimary,
          ),
          onPressed: () => context.navigator.pop(),
        ),
      ),
      body: Center(
        child: Container(
          color: context.colors.primary,
          width: context.sizes.width / 2,
          height: context.sizes.width / 2,
        ),
      ),
    );
  }
}
