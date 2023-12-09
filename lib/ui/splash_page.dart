import 'package:chontag_example/components/components.dart';
import 'package:chontag_example/components/constants.dart';
import 'package:chontag_example/ui/registrations/login_page.dart';
import 'package:chontag_example/ui/registrations/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  // final String assetName = 'assets/logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(12),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(AllConstants.splashLogo),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Chontag",
                  style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            const Text(
              "Let’s get financial",
              style: TextStyle(color: Colors.white, fontSize: 68, height: 1.2),
            ),
            const Row(
              children: [
                Text(
                  "freedom ",
                  style: TextStyle(color: Colors.white, fontSize: 68, fontWeight: FontWeight.w700, height: 1.2),
                ),
                Text(
                  "✌️",
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 3),
                  style: TextStyle(color: Colors.white, fontSize: 68, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                    child: Text("Login", style: kButtonText.copyWith(color: kMainColor)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kMainColor,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          side: const BorderSide(color: Colors.white)),
                    ),
                    child: Text("Sign up", style: kButtonText),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      )),
    );
  }
}
