import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sign_up/SignUp3.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {

  TextEditingController phone = TextEditingController();

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
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Center(
              child: Column(
                children: [
                  Text('Sign in with phone number',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  SizedBox(
                    height: 5,
                  ),
                  IntlPhoneField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ), initialCountryCode: 'IN',
                    onChanged: (phone)
                    {
                      print(phone.completeNumber);
                    },
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown[700]
                          ),
                          onPressed: (){
                            if(phone.text.isEmpty){

                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Verify()));
                            }
                          },
                          child: Text("Verify", style: TextStyle(color: Colors.white),)
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text('Go back', style: TextStyle(
                          color: Colors.blue
                        ),),
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
