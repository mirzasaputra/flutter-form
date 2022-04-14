import 'package:flutter/material.dart';

class SplashUpdatePage extends StatefulWidget {
  const SplashUpdatePage({Key? key}) : super(key: key);

  @override
  State<SplashUpdatePage> createState() => _SplashUpdateState();
}

class _SplashUpdateState extends State<SplashUpdatePage> {
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
                  Text('Password Reset', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
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
                        child: const Text('BACK TO LOGIN', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
