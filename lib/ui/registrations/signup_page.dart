import 'package:chontag_example/components/components.dart';
import 'package:chontag_example/components/constants.dart';
import 'package:chontag_example/components/my_text_field_input.dart';
import 'package:chontag_example/ui/registrations/login_page.dart';
import 'package:chontag_example/ui/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameContr = TextEditingController();
  TextEditingController emailContr = TextEditingController();
  TextEditingController passwordContr = TextEditingController();
  TextEditingController password2Contr = TextEditingController();

  String? nameErrorText;
  String? emailErrorText;
  String? passwordErrorText;
  String? password2ErrorText;
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   emailErrorText = null;
  //   emailErrorText = null;
  //   passwordErrorText = null;
  //   passwordErrorText = null;
  //   nameContr.clear();
  //   emailContr.clear();
  //   passwordContr.clear();
  //   password2Contr.clear();
  // }

  @override
  Widget build(BuildContext context) {
    void checkSignin() {
      bool emailValid =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailContr.text);

      if (nameContr.text.isEmpty) {
        nameErrorText = 'Please, fill an Name';
      } else {
        nameErrorText = null;
      }

      if (emailContr.text.isEmpty) {
        emailErrorText = 'Please, fill an email';
        emailContr.clear();
      } else if (!emailValid) {
        emailErrorText = 'Please, enter correct email address';
        emailContr.clear();
      } else {
        emailErrorText = null;
      }

      if (passwordContr.text.isEmpty) {
        passwordErrorText = 'Please, fill an Password';
      } else {
        passwordErrorText = null;
      }

      if (password2Contr.text.isEmpty) {
        password2ErrorText = 'Please, fill an Password';
      } else if (passwordContr.text != password2Contr.text) {
        password2ErrorText = 'Please, enter correct confirmation password';
      } else {
        password2ErrorText = null;
      }

      setState(() {});
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: Colors.white,
          // scrolledUnderElevation: 0,
          leadingWidth: 100,
          centerTitle: true,
          title: const Text(
            "Sign up",
            style: TextStyle(fontSize: 17),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SplashPage(),
                )),
            child: Container(
              child: const Row(
                children: [
                  Icon(Icons.chevron_left, color: Color(0xFF007AFF), size: 32),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 17, color: Color(0xFF007AFF), fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (route) => false),
              child: const Text(
                "Login   ",
                style: TextStyle(fontSize: 17, color: Color(0xFF007AFF), fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              SvgPicture.asset(AllConstants.mainLogo),
              const SizedBox(height: 36.0),
              const Align(
                child: Text(
                  'Signing page',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 36.0),
              Form(
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.person, size: 18),
                      SizedBox(width: 12),
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  MyTextFieldInput(
                    textInputType: TextInputType.name,
                    hintText: "Enter your name",
                    controller: nameContr,
                    errorText: nameErrorText,
                  ),
                  const SizedBox(height: 18),

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
                    hintText: "Create new password",
                    controller: passwordContr,
                    errorText: passwordErrorText,
                  ),

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
                    hintText: "Confirm new password",
                    controller: password2Contr,
                    errorText: password2ErrorText,
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        checkSignin();
                        if ((nameErrorText == null) &&
                            (emailErrorText == null) &&
                            (passwordErrorText == null) &&
                            (password2ErrorText == null)) {
                          nameContr.clear();
                          emailContr.clear();
                          passwordContr.clear();
                          password2Contr.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kMainColor,
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                      child: Text("Sign up", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
