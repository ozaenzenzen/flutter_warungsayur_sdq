import 'package:flutter/material.dart';
import 'package:flutter_warungsayur_sdq/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColor.firstGreen1,
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