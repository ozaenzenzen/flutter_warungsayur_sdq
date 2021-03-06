import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_warungsayur_sdq/utils/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          // color: AppColor.firstGreen1,
          ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Pesan Sekarang!",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: screenUtil.setSp(25),
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          minimumSize: Size(
            screenUtil.setWidth(200),
            screenUtil.setHeight(50),
          ),
          padding: EdgeInsets.all(20),
          elevation: 1,
        ),
      ),
    );
  }
}
