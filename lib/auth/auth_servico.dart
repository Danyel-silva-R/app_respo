import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServico {
  final SupabaseClient _supabase = Supabase.instance.client;


  // singup in email
  Future<AuthResponse> signInWithEmailPassword(String email,String password) async{
    return await _supabase.auth.signInWithPassword(
      email:email,
      password: password);
  }

  // sing up with email and password

  Future<AuthResponse> signUpWithEmailPassword(String email,String password) async{
    return await _supabase.auth.signUp(
      email:email,
      password:password

    );
  }

   // sig out

   Future<void> signOut() async{
    await _supabase.auth.signOut();

   }

  //  get  user email
  String? getCurrentUserName() {
    final session = _supabase.auth.currentSession;
    final user = session?.user;
    return user?.id;
  }

  
  //  get  user email
  String? getCurrentUserEmail() {
    final session = _supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}

