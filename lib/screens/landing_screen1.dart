import 'package:flutter/material.dart';
import 'package:t2/screens/phone_number.dart';
import 'package:t2/widgets/dropDown.dart';

class LandingPageOne extends StatelessWidget {
  const LandingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 42,
                  height: 42,
                  child: Image.asset('assets/images/photo1.png'),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Center(
                  child: Text(
                    'Please Select your Language',
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
                const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'You can change the language\nat any time',
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
                LanguageDropDown(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PhoneNumberScreen()));
                    },
                    child: const Padding(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                      child: Text(
                        'NEXT',
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
            // Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/bottom.png',
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
