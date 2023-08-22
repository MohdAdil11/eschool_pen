import 'package:flutter/material.dart';

import 'face_id.dart';


class FaceLogin extends StatefulWidget {
  const FaceLogin({Key? key}) : super(key: key);

  @override
  State<FaceLogin> createState() => _FaceLoginState();
}

class _FaceLoginState extends State<FaceLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face ID Authentication'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {

            bool authenticated = await LocalAuthService().authenticate();
            if (authenticated) {
              // Navigate to the next screen or perform authorized actions
              print('Authentication successful');
            } else {
              // Handle authentication failure
              print('Authentication failed');
            }
          },
          child: Text('Authenticate with Face ID'),
        ),
      ),
    );
  }
}
