

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_starting_project/components/rounded_button.dart';
import 'package:flutter/src/widgets/framework.dart';

import '/constants.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'Registration-screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  var auth =FirebaseAuth.instance;
  String errorMessage ='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 20.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                    ),
                    controller: _emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email){
                      return email != null && EmailValidator.validate(email) ? null : 'Please enter a valid data ';

                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter Your password',
                      labelText: 'Password',
                    ),
                    controller: _passwordController,
                    obscureText:true,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (Password){
                      return Password != null && Password.length >5 ? null : 'The Password should be at least 6 charecter at last.';
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 24.0,
            ),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.red),


            ),
           RoundedButton(color:kRegisterButtonColor ,
             title:'Register' ,
             onPressed: () async {
    if(_formkey.currentState!.validate())
    {
        try {
         await auth.
         createUserWithEmailAndPassword(
            email: _emailController.text,
            password: _passwordController.text,
          ).then((value){
            Navigator.pop(context);
            Navigator.pushNamed(context, ChatScreen.id);

          });
        }catch(exception) {
          print('error ${exception.toString()}');
          setState(() {
            errorMessage = exception.toString().split(' ]')[1];
          });

        }
    }
           },
           ),

            const SizedBox(height: 12),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
