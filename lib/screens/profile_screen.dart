import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// ignore: camel_case_types
enum profile { shipper, transporter }

class _ProfileScreenState extends State<ProfileScreen> {
  profile _profileType = profile.shipper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Please Select a profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          Container(
            // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            child: RadioListTile<profile>(
              activeColor: Color.fromARGB(255, 46, 59, 98),
              value: profile.shipper,
              groupValue: _profileType,
              onChanged: (profile? value) {
                setState(() {
                  _profileType = value!;
                });
              },
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/shipper.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipper',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            child: RadioListTile<profile>(
              activeColor: Color.fromARGB(255, 46, 59, 98),
              value: profile.transporter,
              groupValue: _profileType,
              onChanged: (profile? value) {
                setState(() {
                  _profileType = value!;
                });
              },
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/transporter.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transporter',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: MediaQuery.of(context).size.width / 1.1,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
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
