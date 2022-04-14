import 'package:flutter/material.dart';

class SplashForgotPage extends StatefulWidget {
  const SplashForgotPage({Key? key}) : super(key: key);

  @override
  State<SplashForgotPage> createState() => _SplashForgotState();
}

class _SplashForgotState extends State<SplashForgotPage> {
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
                Navigator.pushNamed(context, '/update-password');
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
                  Text('Check your email', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Incidunt, dolore corrupti atque',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
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
