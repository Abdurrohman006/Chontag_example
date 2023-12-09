import 'package:chontag_example/components/components.dart';
import 'package:chontag_example/components/constants.dart';
import 'package:chontag_example/components/my_text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingFirstPage extends StatefulWidget {
  SettingFirstPage({Key? key}) : super(key: key);

  @override
  State<SettingFirstPage> createState() => _SettingFirstPageState();
}

class _SettingFirstPageState extends State<SettingFirstPage> {
  TextEditingController currencyContr = TextEditingController();

  TextEditingController cashContr = TextEditingController();

  TextEditingController moneyContr = TextEditingController();

  String? cashErrorText;

  String? moneyErrorText;
  // ColorLabel? selectedColor;

  void checkSettingBudget() {
    if (cashContr.text.isEmpty) {
      cashErrorText = 'Please, fill an your Cash';
    } else {
      cashErrorText = null;
    }

    if (moneyContr.text.isEmpty) {
      moneyErrorText = 'Please, fill an money in Bank account';
    } else {
      moneyErrorText = null;
    }

    setState(() {});
  }

  final List listCurrensy = ["Usd", "Uzs", "Eur"];

  @override
  Widget build(BuildContext context) {
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
            "Your current budget",
            style: TextStyle(fontSize: 17),
          ),
          leading: GestureDetector(
            onTap: () {},
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
              onTap: () {},
              child: const Text(
                "Skip   ",
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
              const SizedBox(height: 136.0),
              Form(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Select your currency",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(width: 16),
                      DropdownMenu(
                        inputDecorationTheme: InputDecorationTheme(
                          border: kOutlineBorder,
                          enabledBorder: kOutlineBorder,
                          focusedBorder: kOutlineFocusBorder,
                        ),
                        initialSelection: Text("USD"),
                        controller: currencyContr,
                        onSelected: (value) {},
                        width: 150,
                        // label: const Text('Color'),
                        dropdownMenuEntries: [],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: kBorderColor),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(Icons.cases_rounded, size: 18),
                      SizedBox(width: 12),
                      Text(
                        "Enter your Cash",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  MyTextFieldInput(
                    textInputType: TextInputType.number,
                    hintText: "0.0",
                    controller: cashContr,
                    errorText: cashErrorText,
                  ),
                  const SizedBox(height: 18),

                  const Row(
                    children: [
                      Icon(Icons.credit_card, size: 18),
                      SizedBox(width: 12),
                      Text(
                        "Enter your money in Bank account",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  MyTextFieldInput(
                    textInputType: TextInputType.number,
                    hintText: "0.0",
                    controller: moneyContr,
                    errorText: moneyErrorText,
                  ),
                  const SizedBox(height: 18),

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
                        checkSettingBudget();
                        if ((cashErrorText == null) && (moneyErrorText == null)) {
                          cashContr.clear();
                          moneyContr.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kMainColor,
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                      child: Text("Next", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
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
