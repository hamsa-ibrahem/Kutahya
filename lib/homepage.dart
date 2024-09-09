import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'basicItem.dart';
import 'componant.dart';
import 'cubit/HomePageState.dart';
import 'cubit/homePageCubit.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _getTabText = [
      "Basic info",
      "Performance & Insurance details",
      "Problems & Car engine",
      "Address",
      "Reviews"
    ];
    return BlocProvider(
        create: (context) => HomePageCubit(),
        child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
          HomePageCubit cubit = HomePageCubit.get(context);
          return Scaffold(
              floatingActionButton: Container(
                height: 70,
                width: 360,
                color: Color(0xffE0E0E0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    whatsapp_callButton(
                      icon: "assets/images/call.svg",
                      text: "Call now",
                      color: Color(0XFFEB5757),
                    ),
                    whatsapp_callButton(
                      icon: "assets/images/Whatsapp.svg",
                      text: " WhatsApp",
                      color: Color(0XFF25D366),
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image 3.png',
                          ),
                          fit: BoxFit.fill)),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Stack(children: [
                        Container(
                          child: CarouselSlider.builder(
                            itemCount: 7,
                            itemBuilder: (context, index, realindex) {
                              return buildImage(
                                image: "assets/images/Car photo.png",
                                index: index,
                              );
                            },
                            options: CarouselOptions(
                                height: 370,
                                onPageChanged: (index, reason) =>
                                    cubit.updateSelectedIndex(index)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 315, left: 120),
                          child: buildindcator(
                            activeindex: cubit.activeindex,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 10),
                          child: IconButtonCar(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/images/Group 256.svg")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 130),
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/images/Compare.svg",
                                height: 26,
                                width: 95,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 300),
                          child: IconButtonCar(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/images/favorite.svg")),
                        ),
                      ]),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 100),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 170),
                                          child: textStyle(
                                              text: "Audi",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffF47D21)),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 70),
                                          child: textStyle(
                                              text: "Audi e-tron Premium",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff092042)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: textStyle(
                                                text:
                                                    "15.000 QRD (Negotiable) ",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff092042)),
                                          ),
                                          SvgPicture.asset(
                                              "assets/images/Group.svg"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 23,
                                            width: 34,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF47D21),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                                child: textStyle(
                                                    text: "Sell",
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 100),
                                child: Container(
                                  height: 75,
                                  width: 2,
                                  color: Color(0xffE0E0E0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 100, right: 20),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          textStyle(
                                            text: "4.0",
                                            color: Color(0xff4F4F4F),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFBAD39),
                                          ),
                                        ],
                                      ),
                                      textStyle(
                                        text: "(2 reviews)",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff4F4F4F),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: listTitleKutahya(
                              height: 91,
                              color: Color(0x80F47D21),
                              border: Border.all(
                                  color: Color(0xffE0E0E0), width: 1),
                              title: textStyle(
                                text: "5% off for 3 days",
                                color: Color(0xff092042),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              leading:
                                  SvgPicture.asset("assets/images/Vector.svg"),
                              subtitle: textStyle(
                                text: "Lorem ipsum dolor sit amet purus.",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff092042),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 2,
                          width: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0x33E0E0E0),
                                // 20% من اللون
                                Color(0xFFE0E0E0),
                                // 100% من اللون
                                Color(0x33E0E0E0).withOpacity(0.2),
                                // 20% من اللون
                              ],
                              stops: [0.0, 0.5, 1.0], // توزيع الألوان
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight, // نفس اللون الفاتح
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 126,
                        width: 328,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: textStyle(
                                  text: "Description",
                                  color: Color(0XFFF47D21),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            textStyle(
                              text:
                                  "Lorem ipsum dolor sit amet consectetur. Porta amet ultricies lectus morbi ac cras nibh. Elit malesuada non posuere non dictumst varius duis. Sit elit tortor ut volutpat suspendisse in sit faucibus.",
                              color: Color(0XFF092042),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5, // Number of tabs
                            itemBuilder: (context, index) {
                              return Stack(children: [
                                tabButtonComponant(
                                  onPressed: () {
                                    cubit.setIndex(index);
                                  },
                                  color: (cubit.index1 == index)
                                      ? Color(0xffF47D21)
                                      : Colors.transparent,
                                  child: textStyle(
                                    text: _getTabText[index],
                                    // Helper method to get tab text
                                    color: (cubit.index1 == index)
                                        ? Color(0xffF47D21)
                                        : Color(0xff4F4F4F),
                                    fontSize: 16,
                                    fontWeight: (cubit.index1 == index)
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                  ),
                                ),
                                Positioned(
                                  bottom: 22,
                                  child: Container(
                                    height: 2,
                                    width: 750,
                                    //MediaQuery.of(context).size.width,
                                    color: Color(0xffE0E0E0),
                                  ),
                                ),
                              ]);
                            }),
                      ),
                      if (cubit.index1 == 0) BasicInfoItem(),
                      if (cubit.index1 == 1)
                        SizedBox(
                          height: 100,
                        ),
                      if (cubit.index1 == 2)
                        SizedBox(
                          height: 100,
                        ),
                      if (cubit.index1 == 3)
                        SizedBox(
                          height: 100,
                        ),
                      if (cubit.index1 == 4)
                        SizedBox(
                          height: 100,
                        ),
                      SizedBox(
                        height: 100,
                      ),
                    ]),
                  )));
        }));
  }
}
