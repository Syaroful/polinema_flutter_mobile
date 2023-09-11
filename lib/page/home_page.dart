import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/components/convert_button.dart';
import 'package:polinema_flutter_mobile/components/convert_dropdown.dart';
import 'package:polinema_flutter_mobile/components/convert_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();

  String? target;
  double? result;
  List<String> histories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar with blue color
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text("Temperature Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ConvertInput(
              hint: "Temperature in Celcius",
              controller: controller,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            ConvertDropdown(
                items: target,
                items: const ['reamur', 'kelvin'],
                onChanged: onChanged),
            ConvertButton(title: 'Convert', onTap: () {})
          ],
        ),
      ),
    );
  }
}
