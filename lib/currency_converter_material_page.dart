import 'package:flutter/material.dart';

// 1. Create a variable that stores the converter currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the valure in the variable that we created
// 4. Display the variable

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>_CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  
    final TextEditingController textEditingController = TextEditingController();
    double result = 0;

     void convert(){
    result = double.parse(textEditingController.text)*80;
  }

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    print('rebuilt');

    final border = OutlineInputBorder(
      borderSide:  const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      // BorderRadius is not const class
      borderRadius: BorderRadius.circular(5),
    );

    return  Scaffold(
      backgroundColor:   Colors.white24,
      appBar: AppBar(
        backgroundColor:   Colors.black,
        elevation: 0,
        title: const Text(
          'Curreny Convertor',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),

        ),
        centerTitle: true,
      ),
      // To Center the wightes
      body:  Center(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // INR text
            Text(
              'INR ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            // TextField
            Padding(
              padding:  const EdgeInsets.all(30),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.amber,
                ),
                cursorRadius: const Radius.elliptical(10, 10),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.amber,
                  filled: true,
                  fillColor:  Colors.black,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            // button
            // ElevatedButton
            // TextButton appears like a text
            Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
