import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/screens/pinScreen/pinScreenClass.dart';
import 'package:flutter/material.dart';
class PassCodeSetScreen extends StatefulWidget {

  @override
  _PassCodeSetScreenState createState() => new _PassCodeSetScreenState();
}

class _PassCodeSetScreenState extends State<PassCodeSetScreen> {
  bool isFingerprint = false;
  List<String> x;
  Future<Null> biometrics() async {
    // final LocalAuthentication auth = new LocalAuthentication();
    // bool authenticated = false;

    // try {
    //   authenticated = await auth.authenticateWithBiometrics(
    //       localizedReason: 'Scan your fingerprint to authenticate',
    //       useErrorDialogs: true,
    //       stickyAuth: false);
    // } on PlatformException catch (e) {
    //   print(e);
    // }
    // if (!mounted) return;
    // if (authenticated) {
    //   setState(() {
    //     isFingerprint = true;
    //   });
    // }
  }

 bool isSetDone = true;

  @override
  Widget build(BuildContext context) {
    var myPass = [1, 2, 3, 4];
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
          body:
          isSetDone?
           LockScreen(
          //foregroundColor: AppColors.darkBrown,
          title: "Let’s  setup your PIN ",
          passLength: myPass.length,
          bgImage: "assets/splash.png",
          showFingerPass: false,
          fingerFunction: biometrics,
          numColor: Colors.blue,
          fingerVerify: isFingerprint,
          borderColor: Colors.white,
          showWrongPassDialog: true,
          wrongPassContent: "Wrong pass please try again.",
          wrongPassTitle: "Opps!",
          wrongPassCancelButtonText: "Cancel",
          passCodeVerify: (passcode) async {
            for (int i = 0; i < 4; i++) {
              if (passcode[i] != myPass[i]) {
                return false;
              }else{
                return true;
              }
            }
            x= passcode;
            setState(() {
              
            });
            return true;
          },
          onSuccess: () {
            print(x);
            isSetDone =true;
            setState(() {
                          
                        });
          // GeneralHelper.setPin(x).then((value) =>{
          //   value?Get.back():print('pass not saved'),
          // });
          }
          ):LockScreen(
          //foregroundColor: AppColors.darkBrown,
          title: "Ok. Re type your PIN again. ",
          passLength: myPass.length,
          bgImage: "assets/splash.png",
          showFingerPass: false,
          fingerFunction: biometrics,
          numColor: Colors.blue,
          fingerVerify: isFingerprint,
          borderColor: Colors.white,
          showWrongPassDialog: false,
          wrongPassContent: "Wrong pass please try again.",
          wrongPassTitle: "Opps!",
          wrongPassCancelButtonText: "Cancel",
          passCodeVerify: (passcode) async {
            for (int i = 0; i < 4; i++) {
              if (passcode[i] != myPass[i]) {
                return false;
              }else{
                return true;
              }
            }
            x= passcode;
            setState(() {
              
            });
            return true;
          },
          onSuccess: () {
            print(x);
          // GeneralHelper.setPin(x).then((value) =>{
          //   value?Get.back():print('pass not saved'),
          // });
          }
          ),
    );
  }
}