import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 20,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: const Text(
                  'Enter verification code',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 5,
                ),
                child: const Text(
                  'Sent to +91 88664 53610',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: OtpTextField(
        numberOfFields: 6,
        borderColor: const Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        fieldWidth: 50,
        fieldHeight: 50,
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: const Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),)
            ],
          ),
        ),
      ),
    );
  }
}
