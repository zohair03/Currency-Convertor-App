import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './currency_converter_material_page.dart';
import 'currency_converter_cupertino_page.dart';

// 1. Create a variable that stores the converter currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the valure in the variable that we created
// 4. Display the variable

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}