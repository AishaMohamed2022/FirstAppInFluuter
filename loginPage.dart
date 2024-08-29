import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 18, 57, 195),
      body: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 10),
        //  Text("User Name", style: TextStyle(fontSize: 20.0)),
         child:  TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              hintText: "Enter your name",
              fillColor: Colors.grey.shade100,
              filled: true
            ),
          ),
          ),
          //second field
          //Text("Password", style: TextStyle(fontSize: 20.0)),
          Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 10),

        child:   TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              
              hintText: "Enter your password",
              fillColor: Colors.grey.shade100,
              filled: true
            ),
          ),
          ),
          //Bottun
          ElevatedButton(
            
            child: const Text(
              'Login', style: TextStyle(fontSize: 20.0),

            
            ),
            
            
            onPressed: () {},
            
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
        child:  Text('Sign in with',),),
        //Icons
        
        Container(
          width: 300,
          height:100,
         
        child:Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              
          onTap: ()async {
            const url = 'https://accounts.google.com/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
          },
          child: Image.asset("images/Google__G__logo.svg.png",
          width: 60,
          ),
          
            ),
          InkWell(
          onTap: ()async {
            const url = 'https://www.linkedin.com';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
          },
          child: Image.asset("images/Logo.png",
          width: 100,
                    color: Colors.white,

          ),
            ),
        ],)
        
          
        ),
        
        
        

        ],
      ),
      
    );
  }
}
