import 'package:flutter/material.dart';

class SplashSignUpPage extends StatefulWidget {
  const SplashSignUpPage({Key? key}) : super(key: key);

  @override
  State<SplashSignUpPage> createState() => _SplashSignUpState();
}

class _SplashSignUpState extends State<SplashSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(child: Image.asset('assets/images/bg-top.png'), top: 0, right: 0),
          Positioned(child: Image.asset('assets/images/bg-bottom.png'), bottom: 0, left: 0),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Icon(Icons.close_rounded, size: 25.0, color: Colors.white),
            ),
            top: 10.0,
            right: 10.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Thank you for registering', textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Incidunt, dolore corrupti atque',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const SizedBox(height: 15.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
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
                        child: const Text('LOGIN WITH ACCOUNT', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
