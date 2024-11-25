import 'package:app_repositorio/screens/login_page.dart';
import 'package:app_repositorio/screens/register_page.dart';
import 'package:flutter/material.dart';



class LoginOfRegister extends StatefulWidget{
  const LoginOfRegister({super.key});

  @override
  State<LoginOfRegister> createState() => _LoginOfRegisterState();
}

class _LoginOfRegisterState extends State<LoginOfRegister> {
  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
      
    });

  }
  @override
  Widget build(BuildContext context) {
  if(showLoginPage){
    return LoginPage(onta: togglePages);
  }else{
      return RegisterPage(onta:togglePages );
  }
  }
}