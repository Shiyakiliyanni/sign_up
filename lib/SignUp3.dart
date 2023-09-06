import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
            color: Colors.pink,
            image: DecorationImage(
                image: AssetImage('assets/mini.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: Container(
            width: 300,
            height: 240,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Center(
              child: Column(
                children: [
                  Text("Verify phone number",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(
                    child: Pinput(
                      controller: otp,
                      length: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      inputFormatters: [
                         FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown[700]
                          ),
                          onPressed: (){

                          },
                          child: Text('Submit OTP', style: TextStyle(color: Colors.white),)
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Text("Change Phone number", style: TextStyle(
                              color: Colors.blue
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Resend OTP", style: TextStyle(
                            color: Colors.blue
                          ),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
