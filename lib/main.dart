import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MBanking(),
    debugShowCheckedModeBanner: false,
  ));
}

class MBanking extends StatelessWidget {
  final ValueNotifier<bool> isSecurePassword = ValueNotifier<bool>(true);

  @override
  Widget build (BuildContext context){

    return Scaffold(
    appBar: AppBar(
      
      title: Text("Login Page"),
      backgroundColor: Colors.blue[900],
      
    ),

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text(
        "Login",
         style: TextStyle(
          fontSize: 35,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),   
        ),
      
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30)
        ),

      Form(
        child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter email",
              prefix: Icon(Icons.email),
              border: OutlineInputBorder()
            ),
            onChanged: (String value){

            },
            validator: (value){
              return value !.isEmpty ? " Please enter email" : null;
            },
          ),
          ),

          SizedBox(height: 30,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: 
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter password",
              prefix: Icon(Icons.password),
              border: OutlineInputBorder()
            ),
            onChanged: (String value){

            },
            validator: (value){
              return value !.isEmpty ? " Please enter password" : null;
            },
          ),
        ),

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:35)),
          MaterialButton(
            minWidth: double.infinity,
            onPressed: (){
              
            },
            child: Text("Login"),
            color:Colors.teal,
            textColor: Colors.white,
          ),

          

      ])
      )  
      ],
    )
  );
  }
}