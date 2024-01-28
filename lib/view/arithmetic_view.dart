import 'package:flutter/material.dart';
import 'package:flutter_testing/routes/app_routes.dart';

class ArithemticView extends StatefulWidget {
  const ArithemticView({super.key});

  @override
  State<ArithemticView> createState() => _ArithemticViewState();
}

class _ArithemticViewState extends State<ArithemticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first + second;

    Navigator.pushNamed(context, AppRoute.OutputRoute, arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ArithemticView"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  decoration: const InputDecoration(
                    labelText: "first number",
                  ),
                ),
                TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: "Second number",
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          add();
                        }
                      },
                      child: const Text("Addition")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Subtration")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Multiplication")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Division")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
