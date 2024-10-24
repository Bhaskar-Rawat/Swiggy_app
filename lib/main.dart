import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:second_app/otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    FocusNode myFocusNode = FocusNode();
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
                    controller: phoneController,
                    focusNode: myFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color:
                              myFocusNode.hasFocus ? Colors.red : Colors.black),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
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
                height: 50,
                color: Colors.white,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      String phoneNumber = phoneController.text;
                      if (phoneNumber.length == 10 &&
                          int.tryParse(phoneNumber) != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyPage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Please enter a valid 10-digit number.'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 209, 209, 209), 
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
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center, 
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black, 
                        fontSize: 14, 
                      ),
                      children: [
                        TextSpan(
                          text: 'By clicking in, I accept the ', 
                        ),
                        TextSpan(
                          text: 'terms of service', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ' & ', 
                        ),
                        TextSpan(
                          text: 'privacy policy', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: '.', 
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),),);
      
    
  }
}

