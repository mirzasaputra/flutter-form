import 'package:flutter/material.dart';
import 'package:flutterform/component/form_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignInState();
}

class _SignInState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool termPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
            // Positioned(child: Image.asset('assets/images/bg-top.png'), top: 0, right: 0),
            // Positioned(child: Image.asset('assets/images/bg-bottom.png'), bottom: 0, left: 0),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 20.0),
                    FormInput(
                      placeholder: 'Name',
                      prefixIcon: Icon(Icons.account_circle, color: Colors.purple),
                      validatorMessage: 'Field name is required',
                    ),
                    const SizedBox(height: 15.0),
                    FormInput(
                      placeholder: 'Email',
                      prefixIcon: Icon(Icons.mail_outline, color: Colors.purple),
                      validatorMessage: 'Field email is required',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15.0),
                    FormInput(
                      placeholder: 'Password',
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.purple),
                      validatorMessage: 'Field password is required',
                      obsecureText: true,
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                            onChanged: (value) => setState(() {
                              if (termPolicy) {
                                termPolicy = false;
                              } else {
                                termPolicy = true;
                              }
                            }),
                            value: termPolicy,
                            checkColor: Colors.white,
                            activeColor: Colors.purple,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Text('I accept term policy'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/splash-signup');
                        }
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.purple,
                              Colors.blue.shade900,
                              Colors.purple.shade900
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text('CREATE ACCOUNT', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account? "),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text('Sign In', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
