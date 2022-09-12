import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => context.go("/22"),
              child: Text('Screen 1'),
            ),
            TextButton(
              onPressed: () => GoRouter.of(context).go("/2"),
              child: Text('Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}
