import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterproject/components/custom_text_field.dart';
import 'package:flutterproject/components/curve.dart';
import 'package:flutterproject/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/providers/auth_provider.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  String username = '';
  String password = '';
  /*final _storage = FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
  }

 
  Future<void> _loadSavedCredentials() async {
    final savedUsername = await _storage.read(key: 'username');
    final savedPassword = await _storage.read(key: 'password');

    if (savedUsername != null && savedPassword != null) {
      setState(() {
        username = savedUsername;
        password = savedPassword;
        rememberMe = true;
      });
    }
  }

  Future<void> _login() async {
    final authProvider = Provider.y
    of<AuthProvider>(context, listen: false);

    final isAuthenticated = await authProvider.login(username, password);

    if (isAuthenticated) {
      if (rememberMe) {
        await _storage.write(key: 'username', value: username);
        await _storage.write(key: 'password', value: password);
      } else {
        await _storage.delete(key: 'username');
        await _storage.delete(key: 'password');
      }

      Navigator.pushNamed(context, Routes.welcome);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid credentials')),
      );
    }
  }
 */
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.bottomRight,
        fit: StackFit.expand,
        children: [
          Image.asset(AppAssets.bgs),

          ClipPath(
            clipper: ImageClipper(),
            child: SvgPicture.asset(
              'assets/images/top.svg',
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),

          // Back Button
          Positioned(
            top: 30.0,
            left: 20.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: kDarkBlueColor,
                  size: 24.0,
                ),
              ),
            ),
          ),

          // Login Form
          Positioned(
            height: MediaQuery.of(context).size.height * 0.67,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.67,
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Welcome Text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome!',
                            style: GoogleFonts.poppins(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                              color: kDarkBlueColor,
                            ),
                          ),
                          Text(
                            'Login to your account',
                            style: GoogleFonts.poppins(
                              color: kGreyColor,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),

                      // Username and Password Fields
                      Column(
                        children: [
                          CustomTextField(
                            hintText: 'Username',
                            icon: Icons.person,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {
                              username = value;
                            },
                          ),
                          CustomTextField(
                            hintText: 'Password',
                            icon: Icons.lock,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateProperty.all(
                                          kDarkBlueColor),
                                      value: rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          rememberMe = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        color: kGreyColor,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.resetPassword);
                                  },
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        kDarkBlueColor),
                                  ),
                                  child: const Text(
                                    'Forgot Password ?',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Login Button
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom:
                              10.0, // Reduce bottom padding to add Facebook login button
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                // final authProvider = Provider.of<AuthProvider>(
                                //     context,
                                //     listen: false);
                                // try {
                                //   await authProvider.login(username, password);
                                Navigator.pushReplacementNamed(
                                    context,
                                    Routes
                                        .welcome); // Navigate after successful login
                                // } catch (e) {
                                //   // Handle error (e.g., show a snackbar or dialog)
                                //   print(e.toString());
                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: const Color(0xFF1D5C8F),
                                  fontSize: 18,
                                ),
                              ),
                            ),

                            // Login with Facebook Button
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
                                onPressed: () async {
/*                                   final authProvider =
                                      Provider.of<AuthProvider>(context,
                                          listen: false);
                                  try {
                                    await authProvider.facebookLogin();
                                  } catch (e) {
                                    // Handle error (e.g., show a snackbar or dialog)
                                    print(e.toString());
                                  } */
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook.png', // Your Facebook icon path
                                      height: 24.0,
                                      width: 24.0,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Login with Facebook',
                                      style: TextStyle(
                                        color: const Color(0xFF1D5C8F),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don\'t have an account ?',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              kDarkBlueColor),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, Routes.signUp);
                                    },
                                    child: const Text(
                                      'Sign up',
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
