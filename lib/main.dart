import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/All_log.dart';
import 'package:flutter_application_1/screens/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Mainpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Mainpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) => Scaffold(
   body: StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot){
      if (snapshot.hasData){
        return ConvexAppExample();
      }else{
        return all_log();
      }
    },
   ),
  );
    
  
}