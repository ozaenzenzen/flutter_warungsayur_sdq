import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Our Products: ",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: screenUtil.setSp(40),
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: screenUtil.setHeight(20),
              ),
              productGridRow(index),
              SizedBox(
                height: screenUtil.setHeight(20),
              ),
              productGridRow(index),
            ],
          );
        },
      ),
    );
  }

  Widget productGridRow(int index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        productGridCategory(index.toString()),
        SizedBox(
          width: screenUtil.setWidth(10),
        ),
        productGridCategory(index.toString()),
        SizedBox(
          width: screenUtil.setWidth(10),
        ),
        productGridCategory(index.toString()),
      ],
    );
  }

  Widget productGridCategory(String isi) {
    return Container(
      height: 300,
      width: 225,
      margin: EdgeInsets.symmetric(
        vertical: screenUtil.setHeight(15),
        horizontal: screenUtil.setWidth(15),
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade900,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            color: Colors.black38,
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        isi,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: screenUtil.setSp(40),
        ),
      ),
    );
  }
}
