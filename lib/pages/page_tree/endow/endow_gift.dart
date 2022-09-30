import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/app_text.dart';

class GiftPlus extends StatefulWidget {
  GiftPlus({Key? key}) : super(key: key);

  @override
  State<GiftPlus> createState() => _GiftPlusState();
}

class _GiftPlusState extends State<GiftPlus> {
  var logos = {
    "robot.jpg": "Tất cả",
    "check.jpg": "Dịch vụ cưới",
    "welcome-one.jpg": "PTI",
    "welcome-two.jpg": "PDCA",
    "welcome-three.jpg": "PNJ",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 235, 234, 231),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  color: Colors.black,
                  // decoration: BoxDecoration(
                  //   borderRadius:
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ưu Đãi",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
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
                            FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/GiftCollected');
                                },
                                child: Container(
                                  child: Text(
                                    "Ưu Đãi Của Tôi",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.all(5),
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    AppText(
                      size: 15,
                      text: "Mới",
                      color: Colors.black45,
                    )
                  ],
                ),
                Icon(Icons.next_plan)
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            height: 150,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      size: 16,
                      text: "Danh mục ưu đãi",
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // height: 80,
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img/" +
                                          logos.keys.elementAt(index)))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AppText(
                              size: 8,
                              text: logos.values.elementAt(index),
                              color: Colors.black,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "không có gì để hiển thị cả",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
