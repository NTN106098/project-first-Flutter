import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/app_text.dart';
import 'package:mobile_app/widgets/list_view.dart';

class ProfileUser extends StatefulWidget {
  ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(59, 163, 161, 161),
        body: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.black,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppText(
                              size: 12,
                              text: "Chỉnh sửa",
                              color: Colors.white,
                            )
                          ]),
                    ),
                    Container(
                      height: 80,
                      color: Colors.white,
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/img/robot.jpg"))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppText(
                        size: 12,
                        text: "02135454787",
                        color: Colors.black54,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.price_check,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            size: 15,
                            text: "Mới",
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.next_plan,
                      color: Colors.black54,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ContainerContentViews(
                      icon: Icons.note,
                      text: "Mon Amie Suit & Uniform Ưu Đãi",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  ContainerContentViews(
                      icon: Icons.note,
                      text: "Lịch Sử Tích Điểm",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  ContainerContentViews(
                      icon: Icons.note,
                      text: "Lịch Sử Đơn Hàng",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  ContainerContentViews(
                      icon: Icons.interests_sharp,
                      text: "Ưu Đãi Của Tôi",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  ContainerContentViews(
                      icon: Icons.support_agent,
                      text: "Giới Thiệu Mon Amie Suit & Uniform",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  ContainerContentViews(
                      icon: Icons.logout_sharp,
                      text: "Trung Tâm Hỗ Trợ",
                      sizeIcon: 12,
                      sizeIcon2: 20,
                      iconColor: Colors.black,
                      sizeText: 15,
                      icon2: Icons.next_plan),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/ytb.jpg"))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
