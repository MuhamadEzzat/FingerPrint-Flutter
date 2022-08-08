import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class CheckFingerPage extends StatefulWidget {
  const CheckFingerPage({Key? key}) : super(key: key);

  @override
  State<CheckFingerPage> createState() => _CheckFingerPageState();
}

class _CheckFingerPageState extends State<CheckFingerPage> {

  final LocalAuthentication auth = LocalAuthentication();
  List<BiometricType>? _availableBiometrics;

  void testFunc() async{
    bool authenticated = false;
    try{
      //assign result of authenticate() method to a boolean variable
      authenticated = await auth.authenticate(
            localizedReason: 'Please authenticate to navigate to Second Page.',
            options: const AuthenticationOptions(
                stickyAuth: false,
                useErrorDialogs: false));
      // check if the fingerprint is saved or not or the user pressed cancel
      authenticated ? Navigator.pushNamed(context, '/second_page') : print(authenticated);
    }on PlatformException catch (e){

      //Navigator.pushNamed(context, '/second_page');
      print(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Finger Print Auth'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Welcome to Finger Print App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: testFunc,
              child: const Text(
                'Check Finger Print'
              ),
            )

          ],
        ),
      )
    );
  }
}
enum Availability {
  available,
  notavailable,
  unknown,
}