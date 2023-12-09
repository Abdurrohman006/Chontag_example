import 'package:chontag_example/ui/settings_pages/setting_first_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SettingUpPage extends StatelessWidget {
  SettingUpPage({Key? key}) : super(key: key);

  // final List<PageViewModel> pages = [
  //   PageViewModel(
  //       title: "First title",
  //       body: "Body 1",
  //       // bodyWidget: Text("Widget body"),
  //       footer: Row(
  //         children: [
  //           Expanded(
  //             child: ElevatedButton(
  //               onPressed: () {},
  //               style: ElevatedButton.styleFrom(
  //                   backgroundColor: kMainColor,
  //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
  //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  //               child: Text("Next", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
  //             ),
  //           ),
  //         ],
  //       ),
  //       decoration: PageDecoration(bodyPadding: EdgeInsets.all(12))),
  //   PageViewModel(
  //       title: "Second title",
  //       body: "Body 2",
  //       // bodyWidget: Text(
  //       //   "Widget body 2",
  //       //   style: TextStyle(fontSize: 50),
  //       // ),
  //       footer: Row(
  //         children: [
  //           Expanded(
  //             child: ElevatedButton(
  //               onPressed: () {},
  //               style: ElevatedButton.styleFrom(
  //                   backgroundColor: kMainColor,
  //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
  //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  //               child: Text("Next", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
  //             ),
  //           ),
  //         ],
  //       ),
  //       decoration: PageDecoration(bodyPadding: EdgeInsets.all(12))),
  //   PageViewModel(
  //       title: "third title",
  //       body: "Body 3",
  //       // bodyWidget: Text(
  //       //   "Widget body 3",
  //       //   style: TextStyle(fontSize: 50),
  //       // ),
  //       footer: Row(
  //         children: [
  //           Expanded(
  //             child: ElevatedButton(
  //               onPressed: () {},
  //               style: ElevatedButton.styleFrom(
  //                   backgroundColor: kMainColor,
  //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
  //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  //               child: Text("Next", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
  //             ),
  //           ),
  //         ],
  //       ),
  //       decoration: PageDecoration(bodyPadding: EdgeInsets.all(12))),
  //   PageViewModel(
  //       title: "fourth title",
  //       body: "Body 4",
  //       // bodyWidget: Text(
  //       //   "Widget body 4",
  //       //   style: TextStyle(fontSize: 50),
  //       // ),
  //       footer: Row(
  //         children: [
  //           Expanded(
  //             child: ElevatedButton(
  //               onPressed: () {},
  //               style: ElevatedButton.styleFrom(
  //                   backgroundColor: kMainColor,
  //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
  //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  //               child: Text("Next", style: kButtonText.copyWith(fontWeight: FontWeight.w700)),
  //             ),
  //           ),
  //         ],
  //       ),
  //       decoration: PageDecoration(bodyPadding: EdgeInsets.all(12))),
  // ];

  // controller to keep track of which page we're on
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            SettingFirstPage(),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.purple),
          ],
        ),
        Container(
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
            ))
      ],
    ));
  }
}
