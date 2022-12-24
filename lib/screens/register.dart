import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

List password = [];
List password_repeat = [];
List email = [];
late String userPassword, userPasswordRepeat, userEmail;
late String userName;

class Register extends StatelessWidget {


  const Register({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.app_registration,
                size: 100,),
              const SizedBox(height: 20,),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      onChanged: (String value){
                        userName = value;
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'User Name',
                          hintText: 'Enter username...'
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      onChanged: (String value){
                        userEmail = value;
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          hintText: 'Enter email...'
                      ),
                      validator: Validators.compose([
                        Validators.required('email is required'),
                        Validators.email('invalid email address')
                      ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      onChanged: (String str){
                        userPassword = str;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          hintText: 'Enter password...'
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      onChanged: (String str){
                        userPasswordRepeat = str;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Repeat Password',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if(userEmail.contains('@gmail') && userPassword.length > 5) {
                          if (userPassword == userPasswordRepeat) {
                            password.add(userPassword);
                            email.add(userEmail);
                            print(userEmail + " " + userPassword);
                            const AlertDialog(title: Text("you have registered!"));
                            Navigator.pushNamed(context, '/');
                          }
                        }

                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text("Register",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}