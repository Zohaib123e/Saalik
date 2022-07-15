import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/All_log.dart';
class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Center(
       child: Column(
        children: [
          Spacer(flex: 7,),
          SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    
                    
                     ),
                  
                  
                  child: Text('Logout'),
                  onPressed: ()async{
                       await GoogleSignIn().signOut();
                      
                      FirebaseAuth.instance.signOut();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => all_log(),
                        ),
                      );
                  },
                  
                  
                ),
              ),
              Spacer(flex: 2,),
        ],
       ),
     ),
  
    );
    
  }
}