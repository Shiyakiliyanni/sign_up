import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/SignUp2.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController email = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  bool ob1 = true;
  bool ob2 = true;

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Sign in', style: TextStyle(color: Colors.blue),))
                ],
              ),
              Container(
                width: 300,
                height:410,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("SIGN UP", style: TextStyle(color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 290,
                      height: 57,
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          color: Colors.brown[200]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            // no
                          }
                          return null;
                        },
                        controller: email,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Colors.white
                            ),
                            hintText: 'Enter your email',
                            icon: Icon(Icons.person),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 57,
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          color: Colors.brown[200]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        controller: pass1,
                        obscureText: ob1,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.white
                            ),
                            hintText: 'Enter your Password',
                            icon: Icon(Icons.key),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if(ob1 == true){
                                    ob1 = false;
                                  }else{
                                    ob1 = true;
                                  }
                                });
                              },
                              icon: Icon(ob1?Icons.visibility:Icons.visibility_off),
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 57,
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          color: Colors.brown[200]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        controller: pass2,
                        obscureText: ob2,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                                color: Colors.white
                            ),
                            hintText: 'Re-enter your password',
                            icon: Icon(Icons.key),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if(ob2 == true){
                                    ob2 = false;
                                  }else{
                                    ob2 = true;
                                  }
                                });
                              },
                              icon: Icon(ob2?Icons.visibility:Icons.visibility_off),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown[700]
                        ),
                        onPressed: (){

                        },
                        child: Text('Register', style: TextStyle(color: Colors.white),)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('By registering, you agree to all the'),
                        Text('Terms and condiions', style: TextStyle(color: Colors.blue),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 200,
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 290,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(right: 10),
                              color: Colors.white,
                              child: Image.asset('assets/goog.png'),
                            ),
                            Text('Continue with Google')
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: 290,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(right: 10),
                              color: Colors.white,
                              child: Image.asset('assets/fb.png'),
                            ),
                            Text('Continue with Facebook')
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber()));
                      },
                      child: Container(
                        width: 290,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone, color: Colors.black,),
                            Text('Continue with Phone')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
