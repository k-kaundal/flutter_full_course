import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/utils/size_config.dart';
import 'package:flutter_full_course/src/web/auth/common/login_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isSmall = SizeConfigs.isSmallScreen(context);
    bool isLarge = SizeConfigs.isLargeScreen(context);
    bool isMedium = SizeConfigs.isMediumScreen(context);
    return Scaffold(
      body: isSmall
          ? Container(
              height: size.height,
              width: size.width,
              child: Padding(padding: EdgeInsets.all(10), child: LoginForm()),
            )
          : Container(
              height: size.height,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.all(size.width*0.1),
                      child: Padding(padding: EdgeInsets.all(10),
                      child: LoginForm()),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
