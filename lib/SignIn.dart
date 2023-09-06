import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/ForgotPass.dart';
import 'package:sign_up/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController email = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  bool ob = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mini.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: Container(
            height: 320,
            width: 300,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("SIGN IN", style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
                    textAlign: TextAlign.start,
                    obscureText: ob,
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
                            if(ob == true){
                              ob = false;
                            }else{
                              ob = true;
                            }
                          });
                        },
                        icon: Icon(ob?Icons.visibility:Icons.visibility_off),
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPass()));
                      },
                      child: Text('    Forgot password?' , style: TextStyle(color: Colors.blue,),
                        textAlign: TextAlign.start,),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[700]
                  ),
                    onPressed: (){

                    },
                    child: Text("Sign in", style: TextStyle(color: Colors.white),)
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Don't have an account? Sign Up", style: TextStyle(color: Colors.blue,),
                    textAlign: TextAlign.start,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
