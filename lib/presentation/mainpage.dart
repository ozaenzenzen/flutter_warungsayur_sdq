import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_warungsayur_sdq/presentation/productpage.dart';
import 'package:flutter_warungsayur_sdq/utils/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'orderpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScreenUtil screenUtil = ScreenUtil();

  double menuFontSize = 15;

  PageController pageController = PageController();

  int currentIndex = 0;

  List page = const [
    HomePage(),
    ProductPage(),
    OrderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColor.secondGreenList,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 70,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                // top: 20,
              ),
              child: SelectableText(
                "Warung Kita",
                style: GoogleFonts.lato(
                  fontSize: screenUtil.setSp(25),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              menuButton("Home", page: 0),
              menuButton("About", page: 1),
              menuButton("Order Now", page: 2),
              const SizedBox(width: 50),
            ],
          ),
          body: PageView.builder(
            pageSnapping: false,
            controller: pageController,
            scrollDirection: Axis.vertical,
            itemCount: page.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return page[index];
              // return Container(
              //   height: screenUtil.screenWidth,
              //   width: screenUtil.screenWidth,
              //   // color: Colors.blue,
              //   child: Center(
              //     child: Text(
              //       "$index",
              //       style: TextStyle(
              //         fontSize: 40,
              //       ),
              //     ),
              //   ),
              // );
            },
          ),
        ),
      ],
    );
    // return Scaffold(
    // appBar: AppBar(
    //   title: const SelectableText("Warung Kita"),
    //   elevation: 0,
    //   backgroundColor: Colors.transparent,
    // ),
    //   body: PageView.builder(
    //     scrollDirection: Axis.vertical,
    //     itemCount: 4,
    //     itemBuilder: (context, index) {
    //       return Container(
    // height: screenUtil.screenWidth,
    // width: screenUtil.screenWidth,
    //         color: Colors.blue,
    //         child: Center(
    //           child: Text("$index"),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }

  Widget menuButton(String label, {Function()? onPressed, required int page}) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          pageController.animateToPage(
            page,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
          // pageController.jumpToPage(page);
        });
      },
      child: Text(
        label,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: screenUtil.setSp(menuFontSize),
          fontWeight: FontWeight.w500,
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromWidth(150),
        side: BorderSide(
          style: BorderStyle.none,
        ),
      ),
    );
  }
}
