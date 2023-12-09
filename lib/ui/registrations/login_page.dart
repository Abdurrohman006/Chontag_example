import 'package:chontag_example/components/components.dart';
import 'package:chontag_example/components/constants.dart';
import 'package:chontag_example/components/my_text_field_input.dart';
import 'package:chontag_example/ui/registrations/signup_page.dart';
import 'package:chontag_example/ui/settings_pages/setting_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailContr = TextEditingController();
  TextEditingController passwordContr = TextEditingController();

  String? emailErrorText;
  String? passwordErrorText;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailErrorText = null;
    passwordErrorText = null;
    emailContr.clear();
    passwordContr.clear();
  }

  @override
  Widget build(BuildContext context) {
    void checkLogin() {
      bool emailValid =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailContr.text);

      if (emailContr.text.isEmpty) {
        emailErrorText = 'Please, fill an email';
      } else if (!emailValid) {
        emailErrorText = 'Please, enter correct email address';
      } else {
        emailErrorText = null;
      }

      if (passwordContr.text.isEmpty) {
        passwordErrorText = 'Please, fill an Password';
      } else {
        passwordErrorText = null;
      }

      setState(() {});
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                      (route) => false),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 17, color: Color(0xFF007AFF), fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SvgPicture.asset(AllConstants.mainLogo),
              const SizedBox(height: 36.0),
              const Align(
                child: Text(
                  'Welcome to Chontag!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                child: Text(
                  "Let’s get financial freedom ✌",
                  style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.5), fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 36.0),
              Form(
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.email, size: 18),
                      SizedBox(width: 12),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  MyTextFieldInput(
                    textInputType: TextInputType.emailAddress,
                    hintText: "Enter your email",
                    controller: emailContr,
                    errorText: emailErrorText,
                  ),
                  // TextField(
                  //   controller: emailContr,
                  //   decoration: InputDecoration(
                  //     border: kOutlineBorder,
                  //     enabledBorder: kOutlineBorder,
                  //     // enabledBorder: kOutlineBorder,
                  //     focusedBorder: kOutlineFocusBorder,
                  //     hintText: "Enter your email",
                  //     hintStyle: TextStyle(color: Color(0xFF94A3B8), fontSize: 18, fontWeight: FontWeight.w400),
                  //     errorText: emailErrorText,
                  //   ),
                  // ),
                  const SizedBox(height: 18),

                  const Row(
                    children: [
                      Icon(Icons.lock, size: 18),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MyTextFieldInput(
                    textInputType: TextInputType.visiblePassword,
                    hintText: "Password",
                    controller: passwordContr,
                    errorText: passwordErrorText,
                  ),

                  // Container(
                  //   margin: const EdgeInsets.symmetric(vertical: 12),
                  //   padding: const EdgeInsets.all(16),
                  //   height: 60,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(16)),
                  //     border: Border.all(
                  //       color: kBorderColor,
                  //     ),
                  //   ),
                  //   child: const TextField(
                  //     decoration: InputDecoration.collapsed(
                  //         hintText: "Enter your password",
                  //         hintStyle: TextStyle(color: Color(0xFF94A3B8), fontSize: 18, fontWeight: FontWeight.w400)),
                  //   ),
                  // ),
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        checkLogin();
                        if ((emailErrorText == null) && (passwordErrorText == null)) {
                          emailContr.clear();
                          passwordContr.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingUpPage(),
                              ));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kMainColor,
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                      child: Text("Login", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                child: Text(
                  "or",
                  style: TextStyle(fontSize: 18, color: Color(0xFF94A3B8), fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // elevation: 0.9,
                        backgroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(color: kBorderColor),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AllConstants.googleLogo),
                          // Icon(Icons., color: Colors.white),
                          Text("  Continue with Google", style: kButtonText.copyWith(color: Color(0xFF000000))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF007AFF),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_outlined, color: Colors.white),
                          Text("  Continue with Facebook", style: kButtonText),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF000000),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apple, color: Colors.white),
                          Text("  Continue with Apple ID", style: kButtonText),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
