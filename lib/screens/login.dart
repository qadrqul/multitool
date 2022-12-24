import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:multitool/screens/register.dart';

late String log_password, log_email;
final validator2 = ValidationBuilder().email('not email').maxLength(50).build();


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 100,
              ),
              const SizedBox(
                height: 20,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      onChanged: (String value) {
                        log_email = value;
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          hintText: 'Enter email...'
                      ),
                      validator: validator2,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      onChanged: (String value) {
                        log_password = value;
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
                child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        for(var i = 0;i < password.length;i++){
                          if(password[i] == log_password && email[i] == log_email){
                            Navigator.pushNamed(context, '/homepage');
                          }
                          else{
                            print("Incorrect password or email");
                          }
                        }


                      },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                )),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        "SignUp now!",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
