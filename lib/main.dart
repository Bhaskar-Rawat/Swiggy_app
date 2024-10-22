import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:second_app/otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return MaterialApp( 
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 69, 27),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/img12345.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: const Text(
                  'Enter your number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  color: Colors.white,
                  child: IntlPhoneField(
                    focusNode: myFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: myFocusNode.hasFocus ? Colors.red : Colors.black),
                      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2.0),),
                      
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  color: Colors.white,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 209, 209, 209), // Button background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ))),
                      Container(
  padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
  width: MediaQuery.of(context).size.width,
  color: Colors.white,
  child: Center(
    child: RichText(
      textAlign: TextAlign.center,  // Center align the text
      text: const TextSpan(
        style: TextStyle(
          color: Colors.black,  // Default text color
          fontSize: 14,         // Default font size
        ),
        children: [
          TextSpan(
            text: 'By clicking in, I accept the ',  // Regular text
          ),
          TextSpan(
            text: 'terms of service',               // Bold and underlined text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' & ',                            // Regular text
          ),
          TextSpan(
            text: 'privacy policy',                 // Bold and underlined text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: '.',                              // Regular text
          ),
        ],
      ),
    ),
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}

// child: Column(children: [  Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//               child: const Center(child: Text('Box 1')),
//             ),
//             const SizedBox(height: 20), // Adds spacing between boxes
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//               child: const Center(child: Text('Box 2')),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//               child: const Center(child: Text('Box 3')),
//             ),],),
          