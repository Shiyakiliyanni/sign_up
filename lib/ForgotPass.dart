import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
            width: 300,
            height: 210,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Forgot Password", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 5,
                ),
                Text("We will sent you a link to reset password", style: TextStyle(
                  color: Colors.black,
                  fontSize: 10
                ),),
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
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      hintText: 'Enter your Email',
                      icon: Icon(Icons.mail),
                      border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[700]
                    ),
                      onPressed: (){

                      },
                      child: Text("Submit", style: TextStyle(color: Colors.white),)
                  ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Text('Back', style: TextStyle(color: Colors.blue),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
