import 'package:flutter/cupertino.dart';

// 1. Create a variable that stores the converter currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the valure in the variable that we created
// 4. Display the variable


class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

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
  Widget build(BuildContext context) {

    print('rebuilt');

    void convert(){
      result = double.parse(textEditingController.text) * 81;
      setState(() {});
    }



    return  CupertinoPageScaffold(
      backgroundColor:  CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        
        middle:  Text('Curreny Convertor'),
        
      ),
      // To Center the wightes
      child:  Center(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // INR text
              Text(
                'INR ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                  color: CupertinoColors.black,
                ),
              ),
              // TextField
              Padding(
                padding: const EdgeInsets.all(16),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: 'Please enter the amount in USD',
                  placeholderStyle:const TextStyle(color: CupertinoColors.black),
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ), 
              // button
              // ElevatedButton
              // TextButton appears like a text
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text(
                  'Convert',
                  selectionColor: CupertinoColors.white,
                  style: TextStyle(color: CupertinoColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

