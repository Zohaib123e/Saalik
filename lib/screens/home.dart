


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/getapi/example_three.dart';



import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/All_log.dart';


class ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({Key? key}) : super(key: key);

  @override
  _ConvexAppExampleState createState() => _ConvexAppExampleState();
}

class _ConvexAppExampleState extends State<ConvexAppExample> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome to Home Page'),
      ),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 50,
              
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                    elevation: 3,
                    
                    side: BorderSide(width:1, color:Color.fromARGB(255, 0, 0, 0)),
                    shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                    
                ),
                
                    
                  ),
                  child: const Text("Get Api"),
                  
                  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleThree()));
                  },
                  
                  
                ),
              ),
          ],
           
          
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Scaffold(
        
          appBar: AppBar(
        

        ),
         body: Center(
          child: Center(
            child: Column(
              children: [
                IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => all_log(),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
         ),
         
          )
        ),
    );
    
  }
  
}