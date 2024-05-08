import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Services/auth_service.dart';
import '../Services/consts.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: background_primary,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: background_primary,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.3),
                  Lottie.asset(
                    "assets/AuthDuck.json",
                    width: size.width * 0.60,
                    frameRate: FrameRate(60),
                  ),
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    width: double.infinity,
                    height: 72,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final provider =
                        Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin();
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                      label: Text(
                        sign_in_text,
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        backgroundColor: Color(0xFF2A292F),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 28),
                    child: Text(
                      footer_text,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF423E50)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
