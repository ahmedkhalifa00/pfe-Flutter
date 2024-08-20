import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterproject/components/custom_text_field.dart';
import 'package:flutterproject/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static String id = 'SignupScreen';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.9,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            style: GoogleFonts.poppins(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                              color: kDarkBlueColor,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Create a new account',
                            style: GoogleFonts.poppins(
                              color: kGreyColor,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          CustomTextField(
                            hintText: 'Full Name',
                            icon: Icons.person,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {},
                          ),
                          CustomTextField(
                            hintText: 'Email',
                            icon: Icons.mail,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {},
                          ),
                          CustomTextField(
                            hintText: 'Password',
                            icon: Icons.lock,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {},
                          ),
                          CustomTextField(
                            hintText: 'Confirm Password',
                            icon: Icons.lock,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By signing you agree to our ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: kDarkBlueColor,
                                ),
                              ),
                              Text(
                                ' Terms of use',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: kGreyColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'and ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: kDarkBlueColor,
                                ),
                              ),
                              Text(
                                ' privacy notice',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Your button action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.blue, // Set your desired button color
                            padding: EdgeInsets.symmetric(
                                vertical: 16), // Adjust the vertical padding
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color.fromARGB(255, 190, 207,
                                  240), // Set your desired label color
                              fontSize: 18, // Set your desired font size
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            left: 20.0,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 20.0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: kDarkBlueColor,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
