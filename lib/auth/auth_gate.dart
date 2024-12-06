
import 'package:app_repositorio/screens/home_page.dart';
import 'package:app_repositorio/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,

      builder: (context,snapshot){
       if(snapshot.connectionState == ConnectionState.waiting){
        return const Scaffold(
           body: Center(child:CircularProgressIndicator(
            color: Color.fromARGB(255, 31, 9, 205),
           )),
        );
       }
       final session = snapshot.hasData? snapshot.data!.session :null;

       if (session != null){
        return HomePage();
        
       }else{
        return LoginPage();
       }
      },
    );
  }
}