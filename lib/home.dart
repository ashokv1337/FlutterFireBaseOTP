import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:otp_auth_flutter/otpscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  String verificationID = "";
  bool inAsync = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: inAsync,
      child: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, size) {
            return Center(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                  ),
                  height: size.maxHeight,
                  width: size.maxWidth,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hello! Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: TextField(
                              controller: phonecontroller,
                              decoration: InputDecoration(
                                prefix: Text("+91",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    )),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: getOtp,
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                primary: Colors.yellow[700],
                                padding: EdgeInsets.symmetric(
                                    horizontal: 155, vertical: 15),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ))),
                        SizedBox(height: 15),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  getOtp() async {
    if (mounted) {
      setState(() {
        inAsync = true;
      });
    }

    await _auth.verifyPhoneNumber(
        phoneNumber: "+91${phonecontroller.text}",
        verificationCompleted: (phoneAuthCredential) async {},
        verificationFailed: (verificationFailed) {
          setState(() {
            inAsync = false;
          });
          print(verificationFailed);
        },
        codeSent: (verificationID, resendingToken) async {
          setState(() {
            this.verificationID = verificationID;
            inAsync = false;
          });
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OtpScreen(
                    verificationId: this.verificationID,
                    auth: _auth,
                  )));
        },
        codeAutoRetrievalTimeout: (verificationID) async {});
    // Navigator.of(context)
    //.push(MaterialPageRoute(builder: (context) => OtpScreen()));
  }
}
