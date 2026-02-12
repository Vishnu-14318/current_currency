import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_material_page.dart';


void main() {
  runApp(const MyApp()
  );
}

//types of widgets
//1- stateless widget
//2- stateful widget

//statte

//1.material design
//2.cupertino design  
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
