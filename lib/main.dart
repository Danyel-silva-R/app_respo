

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app.dart';

void main() async{
  await Supabase.initialize(
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlwemJwYXJ5bmdha3pxb3hiaHpmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM0MDQ0NTYsImV4cCI6MjA0ODk4MDQ1Nn0.yn0gebVLckDegoDuZGGKrA8453i_bOOludkBAzzH1Cw" ,
    url:"https://ypzbparyngakzqoxbhzf.supabase.co" ,
  );

  runApp(const App());
}
