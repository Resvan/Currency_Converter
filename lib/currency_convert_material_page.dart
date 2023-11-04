import 'package:flutter/material.dart';

class CurrencyConverterMaterialPae extends StatefulWidget {
  const CurrencyConverterMaterialPae({super.key});

  @override
  State<CurrencyConverterMaterialPae> createState() =>
      _CurrencyConverterMaterialPaeState();
}

class _CurrencyConverterMaterialPaeState
    extends State<CurrencyConverterMaterialPae> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Curency Converter'),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style:
                    const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "Please Enter the Amount in INR",
                      hintStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: const Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(60)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60))),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              )
            ],
          ),
        ));
  }
}
