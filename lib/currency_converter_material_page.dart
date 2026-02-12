import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border =  OutlineInputBorder(
                    //color(0xaarrggbb)
                    borderSide: const BorderSide(
                      
                      width:2.0,
                      style: BorderStyle.solid,
                       ),
                      borderRadius: BorderRadius.circular(5),
                    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 255, 8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "hello ",
                style: TextStyle(
                fontSize:50,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 0, 33)
              ),
              ),
              // padding
              // container
              Padding(
                padding: const EdgeInsets.all(10),
                 child: TextField(
                  style:const TextStyle(
                    fontSize: 30,
                    color: Colors.black45,
                    
                  ),
                  decoration: InputDecoration(
                    hintText:"enter the amount in dollars",
                     hintStyle:const TextStyle(
                       color: Colors.red,
                    ),
                    prefixIcon:const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.yellow,
                    filled:true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder:border,
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    
                    ),
                    ),
              ),
              //button

              // raised 
              // appears like a text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton (
                  onPressed: () {
                  //debug release profile
                  if (kDebugMode) {
                    print("button clicked");
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                   
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 10))),
                child: const Text("Convert"),
                ),
              ),  
            ],
          ),
       ),
    );
  }
}