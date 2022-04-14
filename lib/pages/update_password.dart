import 'package:flutter/material.dart';
import 'package:flutterform/component/form_text_field.dart';

class UpdatePasswordPage extends StatefulWidget {
  const UpdatePasswordPage({Key? key}) : super(key: key);

  @override
  State<UpdatePasswordPage> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePasswordPage> {
  final _formKey = GlobalKey<FormState>();

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
                    const Text('Forgot Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 20.0),
                    FormInput(
                      placeholder: 'New Password',
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.purple),
                      validatorMessage: 'Field new password is required',
                      obsecureText: true,
                    ),
                    const SizedBox(height: 15.0),
                    FormInput(
                      placeholder: 'Confirm New Password',
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.purple),
                      validatorMessage: 'Field confirm new password is required',
                      obsecureText: true,
                    ),
                    const SizedBox(height: 15.0),
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/splash-update-password');
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
                          child: const Text('UPDATE PASSWORD', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        ),
                      ),
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
