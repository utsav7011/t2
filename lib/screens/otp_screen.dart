import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:t2/screens/profile_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    required this.verificationId,
    required this.phoneNo,
  });

  final String verificationId;
  final String phoneNo;

  @override
  // ignore: no_logic_in_create_state
  State<OtpScreen> createState() => _OtpScreenState(phoneNo);
}

class _OtpScreenState extends State<OtpScreen> {
  _OtpScreenState(this.phoneNo);
  final String? phoneNo;
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Center(
            child: Text(
              'Verify Phone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Code is sent to ${phoneNo!} ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: _otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "Enter the Otp"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential =
                      await PhoneAuthProvider.credential(
                    verificationId: widget.verificationId,
                    smsCode: _otpController.text.toString(),
                  );
                  FirebaseAuth.instance
                      .signInWithCredential(credential)
                      .then((value) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
                  });
                } catch (err) {
                  print(err.toString());
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                child: Text(
                  'VERIFY AND CONTINUE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 46, 59, 98),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero)),
                // onPrimary: Color.fromARGB(1, 46, 59, 98),
                padding: const EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
