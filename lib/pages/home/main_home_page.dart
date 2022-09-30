import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "robot.jpg",
    "welcome-three.jpg",
    "welcome-two.jpg",
    "welcome-one.jpg",
    "check.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 247, 244, 244),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              Stack(children: [
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("assets/img/robot.jpg"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          size: 15,
                          text: "Xin chào bạn,",
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 80, right: 15),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              size: 15,
                              text: "Mới",
                              color: Colors.black54,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                AppText(
                                  size: 20,
                                  text: "0",
                                  color: Colors.green,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AppText(
                                  size: 10,
                                  text: "Lịch Sử Mua Hàng",
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.real_estate_agent_outlined,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AppText(
                                  size: 10,
                                  text: "Ưu Đãi Của Tôi",
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.phone_in_talk_sharp,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AppText(
                                  size: 10,
                                  text: "Liên hệ",
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Mua Hàng",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Đặt Lịch",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Bảo Hành",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Tin Tức",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Dịch Vụ Cưới",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Bộ Sưu Tập",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/robot.jpg"))),
                              ),
                              AppText(
                                size: 12,
                                text: "Hình Ảnh" "Khách Hàng",
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tin thời trang",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      "xem thêm",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 25),
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/" + images[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mon Amie & Sao Việt",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      "xem thêm",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 25),
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/" + images[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tin Khuyến Mãi",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      "xem thêm",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 25),
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/" + images[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 120,
                        width: 200,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Column(children: [
                            Container(
                              height: 100,
                              width: double.infinity,
                              margin:
                                  EdgeInsets.only(left: 5, top: 5, right: 5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/img/" + images[index]),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              DateFormat.yMMMd().format(
                                DateTime.now(),
                              ),
                              style: TextStyle(fontSize: 8),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AppText(
                              size: 12,
                              text: "MÙA HÈ BÙNG NỔI VỚI BLAZER CARO",
                              color: Colors.black,
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
