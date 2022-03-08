import 'package:flutter/material.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5),
              ),
              border: Border.all(color: Colors.blue,width: 1)
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
                
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5),
                ),
                border: Border.all(color: Colors.blue,width: 1)
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: (){

          }, child: Container(
            child: Text('Login'),
          ))
        ],
      ),
    );
  }
}
