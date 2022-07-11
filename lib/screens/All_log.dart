
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/emailup.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class all_log extends StatefulWidget {
  const all_log({Key? key}) : super(key: key);

  @override
  State<all_log> createState() => _all_logState();
}

class _all_logState extends State<all_log> {
  
    
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
        
        child: Column(
         
          children: [
            Spacer(),
            Spacer(),
            
                        
                          
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ConvexAppExample()));
                                },
                                child: Text(
                                  "skip",
                                 
                                  style: TextStyle(
                                      color: Colors.black38,
                                      
                                      decoration: TextDecoration.underline,
                                      
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
            
            Spacer(),
            Spacer(),
            Spacer(),
            Image.asset('assets/image/img2.png'),
            Spacer(),
            Text("Welcome to Moobilc",style: TextStyle(
              color: Colors.black, 
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),
            
            ),
            
            Text("The trusted community of buyers and sellers"),
            Spacer(),
            Spacer(),
          
        
            SizedBox(
              height: 50,
              
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 3,
                  
                  side: BorderSide(width:1, color:Color.fromARGB(255, 0, 0, 0)),
                  shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(30)
                  
              ),
              
                  
                ),
                icon: Image.asset('assets/image/img4.png'),
                
                label: Text('Continue with Google     '),
                onPressed: (){
                  signInWithGoogle();
                },
                
                
              ),
            ),
            
            Spacer(),
            
            SizedBox(
              height: 50,
              
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 3,
                  side: BorderSide(width:1, color:Color.fromARGB(255, 0, 0, 0)),
                  shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(30)
              ),
                  
                ),
                icon: Icon(Icons.mail_outline,color: Colors.black),
                label: Text('Continue with Email         '),
                onPressed: (){
                  Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                },
              ),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 3,
                  side: BorderSide(width:1, color:Color.fromARGB(255, 0, 0, 0)),
                  shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(30)
              ),
                  
                ),
                icon: Icon(Icons.phone_android),
                label: Text('Continue with Phone       '),
                onPressed: (){
                 Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginpage(),
                          ),
                        );
                },
              ),
            ),
            Spacer(),
             SizedBox(
              height: 50,
              
               child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 3,
                  side: BorderSide(width:1, color:Color.fromARGB(255, 0, 0, 0)),
                  shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(30)
                   
            ),
                  
                ),
                icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent),
                label: Text('Continue with Facebook'),
                onPressed: (){
                  
                },
            ),
             ),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            
          
          ],
        ),
        
      ),
      
    );
    
  }
   signInWithGoogle()async{
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth=await googleUser?.authentication;
    AuthCredential credential= GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken
    );
    UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);
    if (userCredential.user !=null){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ConvexAppExample()));
    }
  }
}