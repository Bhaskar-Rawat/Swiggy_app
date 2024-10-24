import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:second_app/main_page.dart';

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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 5,
                    ),
                    child: const Text(
                      'Sent to +918866453610',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: OtpTextField(
                  numberOfFields: 6,
                  borderColor: const Color(0xFF512DA8),
                  showFieldAsBox: true,
                  fieldWidth: 50,
                  fieldHeight: 50,
                  onCodeChanged: (String code) {
                    
                  },
                  onSubmit: (String verificationCode) {
                    if (verificationCode == "123456") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MainPage(), 
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text("Verification Failed"),
                            content: Text('The code entered is incorrect.'),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: const Text(
                  'Get verification code again in ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 209, 209, 209), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: const Size(190, 50),
                        ),
                        child: const Text(
                          'Get via SMS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 209, 209, 209), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: const Size(180, 50),
                        ),
                        child: const Text(
                          'Get via Call',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
