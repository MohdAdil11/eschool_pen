
// import 'package:local_auth/local_auth.dart';
//
// class LocalAuth {
//   static final _auth = LocalAuthentication();
//
//   static Future<bool> _canAuthenticate() async =>
//       await _auth.cancheckBiometrics || await _auth.isDeviceSupported();
//   static Future<bool> authenticate() async {
//    try {
//      if (!await _canAuthenticate()) return false;
//      return await _auth.authenticate(
//        authMessages:  [
//          AndroidAuthMessages(
//            signInTitle : 'Sign in',
//            cancelButton : 'No Thanks',
//          ),
//          IOSAuthMessages(
//            cancelButton : 'No Thanks',
//          ),
//        ],
//        localizedReason: 'Use Face Id to authenticate',
//        options: const AuthenticationOptions(
//          useErrorDialogs: true,
//          stickyAuth: true,
//        ),
//      );
//    } catch (e) {
//      debugPrint('error $e');
//    }



//   }
//
//
// }


import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  Future<bool> authenticate() async {
    final List<BiometricType> availableBiometrics =
    await _localAuthentication.getAvailableBiometrics();
     print(availableBiometrics);

    try {

      bool authenticated = await _localAuthentication.authenticate(
        localizedReason: 'Authenticate to access the app', // Reason shown to the user
        // useErrorDialogs: true, // Show system error dialogs
        // stickyAuth: true, // Android only - require authentication again if app goes to background
      );

      return authenticated;
    } catch (e) {
      print("Error authenticating: $e");
      return false;
    }
  }
}
