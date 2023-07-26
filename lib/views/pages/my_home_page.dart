import 'package:flutter/material.dart';
import 'package:okane_2023/controllers/controller_counter.dart';

import '../widgets/counter_controller_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: CounterControllerWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controllerCounter.incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
