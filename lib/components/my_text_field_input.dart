import 'package:chontag_example/components/components.dart';
import 'package:flutter/material.dart';

class MyTextFieldInput extends StatefulWidget {
  TextInputType textInputType;
  TextEditingController controller;
  String hintText;
  String? errorText;

  MyTextFieldInput(
      {required this.textInputType,
      required this.hintText,
      required this.controller,
      required this.errorText,
      Key? key})
      : super(key: key);

  @override
  State<MyTextFieldInput> createState() => _MyTextFieldInputState();
}

class _MyTextFieldInputState extends State<MyTextFieldInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // onTap: () => setState(() => focusedBorder = true),

      controller: widget.controller,

      // onChanged: (string) {
      //   string = _formatNumber(string.replaceAll(',', ''));
      //   _amountController.value = TextEditingValue(
      //     text: string,
      //     selection: TextSelection.collapsed(offset: string.length),
      //   );
      //   if (string != "") {
      //     themeProvider.updateAmount(true);
      //   }
      // },
      cursorColor: kMainColor,

      autofocus: true,

      // style: themeProvider.darkMode ? kText16w400Dark : kText16w400,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // labelText: "USD",
        // labelStyle: TextStyle(color: Color(0xFF94A3B8), fontWeight: FontWeight.w400),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color(0xFF94A3B8), fontSize: 18, fontWeight: FontWeight.w400),
        // label: Padding(padding: EdgeInsets.only(right: 10), child: Text("USD")),
        // prefix: Padding(padding: EdgeInsets.only(right: 10), child: Text("USD")),
        // prefixStyle: TextStyle(color: Color(0xFF94A3B8), fontSize: 18, fontWeight: FontWeight.w400),
        errorText: widget.errorText,
        contentPadding: const EdgeInsets.all(15),
        // prefixText: "\$ ",
        // prefixStyle: const TextStyle(
        //   color: themeProvider.kSecondaryColor,
        //   fontSize: 16,
        //   fontWeight: FontWeight.w400,
        // ),
        // suffix: GestureDetector(
        //   child: const Text(
        //     "clear",
        //     style: TextStyle(color: kPurple, fontWeight: FontWeight.w300),
        //   ),
        //   onTap: () {
        //     _amountController.clear();
        //   },
        // ),
        // prefixText: currencyIsLeft ?? true ? currencySymbol : null,
        // suffixText: currencyIsLeft ?? false ? null : currencySymbol,
        // suffixIcon: Icon(Icons.attach_money,
        //     color: themeProvider.darkMode
        //         ? kSecondaryColorLight
        //         : kSecondaryColor),
        // filled: true,
        // fillColor: Colors.white,
        // themeProvider.darkMode ? kSecondaryColorDark : kSecondaryColorLight,
        focusedErrorBorder: kErrorOutlineFocusBorder,
        border: kOutlineBorder,

        enabledBorder: kOutlineBorder,

        focusedBorder: kOutlineFocusBorder,
        // focusColor:
        // themeProvider.darkMode ? kSecondaryColorLight : kSecondaryColor,
      ),
      keyboardType: widget.textInputType,
      // keyboardType: const TextInputType.numberWithOptions(),
      // keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );
  }
}
