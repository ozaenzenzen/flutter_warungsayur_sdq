import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_warungsayur_sdq/utils/app_color.dart';
import 'package:flutter_warungsayur_sdq/utils/app_string.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          // color: AppColor.firstGreen1,
          ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: screenUtil.setWidth(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeSelectableText("Warung Kita Sayur", fontSize: 65),
            SizedBox(
              height: screenUtil.setHeight(10),
            ),
            homeSelectableText(AppString.loremipsum,
                fontSize: 16, fontWeight: FontWeight.w300),
          ],
        ),
      ),
    );
  }

  Widget homeSelectableText(
    String text, {
    double? fontSize,
    FontWeight fontWeight = FontWeight.w500,
    TextAlign textAlign = TextAlign.center,
  }) {
    return SelectableText(
      text,
      textAlign: textAlign,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: screenUtil.setSp(fontSize!),
        fontWeight: fontWeight,
      ),
    );
  }
}
