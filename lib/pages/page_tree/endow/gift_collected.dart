import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/app_text.dart';

class GiftCollected extends StatefulWidget {
  GiftCollected({Key? key}) : super(key: key);

  @override
  State<GiftCollected> createState() => _GiftCollectedState();
}

class _GiftCollectedState extends State<GiftCollected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: AppText(size: 25, text: "Ưu Đãi Của Tôi", color: Colors.white),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 70,
                  color: Colors.black,
                  // decoration: BoxDecoration(
                  //   borderRadius:
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Tất Cả",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Ưu Đãi Của Tôi",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
