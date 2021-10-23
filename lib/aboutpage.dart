import 'package:flutter/material.dart';
import 'package:flutter_warungsayur_sdq/app_color.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        // color: AppColor.firstGreen1,
      ),
      child: Column(
        children: const [
          Text("ABCBCBCBC"),
          Text("ABCBCBCBC"),
          Text("ABCBCBCBC"),
        ],
      ),
    );
  }
}