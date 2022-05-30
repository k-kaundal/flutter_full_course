import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class FirebaseAuthExample extends StatefulWidget {
  const FirebaseAuthExample({Key? key}) : super(key: key);

  @override
  State<FirebaseAuthExample> createState() => _FirebaseAuthExampleState();
}

class _FirebaseAuthExampleState extends State<FirebaseAuthExample> {

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
auth.createUserWithEmailAndPassword(email: "kaundal.k.k@gmail.com", password: "123456").then((value) {
  print(value);
});
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
