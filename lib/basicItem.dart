import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kutahya/componant.dart';
import 'package:kutahya/cubit/HomePageState.dart';
import 'package:kutahya/cubit/homePageCubit.dart';

class BasicInfoItem extends StatelessWidget {
  BasicInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
      HomePageCubit cubit = HomePageCubit.get(context);
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 220,
            ),
            child: textStyle(
              text: "Vehicle Details",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffF47D21),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          vehicleDetails(details: [
            "Audi",
            "Japan",
            "e-tron Premium",
            "2020",
            "Car",
            "52,758 km",
            "2.5 L",
            "6",
            "Automatic",
            "Petrol",
            "Black",
            "Baghdad (Private)",
            "5",
            "Leather",
            "Rear wheel",
            "New",
            "Car Show"
          ]),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 2,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x33E0E0E0), // 20% من اللون
                    Color(0xFFE0E0E0), // 100% من اللون
                    Color(0x33E0E0E0).withOpacity(0.2), // 20% من اللون
                  ],
                  stops: [0.0, 0.5, 1.0], // توزيع الألوان
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight, // نفس اللون الفاتح
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 220, top: 20),
            child: textStyle(
              text: "Extra features ",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffF47D21),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      cubit.iconExtrafeatures.length,
                      (index) => extraFeatures(
                            icon: cubit.iconExtrafeatures[index],
                            text: cubit.textExtrafeatures[index],
                          ))
                ],
              ),
            ),
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
                    Color(0x33E0E0E0), // 20% من اللون
                    Color(0xFFE0E0E0), // 100% من اللون
                    Color(0x33E0E0E0).withOpacity(0.2), // 20% من اللون
                  ],
                  stops: [0.0, 0.5, 1.0], // توزيع الألوان
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight, // نفس اللون الفاتح
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 245, bottom: 20),
            child: textStyle(
              text: "Seller Info  ",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffF47D21),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          listTitleKutahya(
            height: 94,
            color: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: textStyle(
                  text: "Automotive show",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff092042)),
            ),
            leading: Image.asset(
              "assets/images/Ellipse 43.png",
              height: 64,
              width: 64,
            ),
            subtitle: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 107, top: 10),
                  child: textStyle(
                    text: "+964-99620xxxxx",
                    color: Color(0xff6A7380),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: Color(0xff828282),
                    ),
                    textStyle(
                      text: "Baghdad",
                      color: Color(0xff6A7380),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )
                  ],
                )
              ],
            ),
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
                    Color(0x33E0E0E0), // 20% من اللون
                    Color(0xFFE0E0E0), // 100% من اللون
                    Color(0x33E0E0E0).withOpacity(0.2), // 20% من اللون
                  ],
                  stops: [0.0, 0.5, 1.0], // توزيع الألوان
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight, // نفس اللون الفاتح
                ),
              )),
          SizedBox(
            height: 30,
          ),
          listTitleKutahya(
            height: 139,
            color: Colors.white,
            leading: SvgPicture.asset(
                "assets/images/car-transport-navigation-svgrepo-com 1.svg"),
            title: textStyle(
                text:
                    "Are you not in the same city and want to move the car to your location?",
                color: Color(0xff092042),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonCar(
                text: "Ask to move the car",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          listTitleKutahya(
            height: 139,
            color: Colors.white,
            leading: SvgPicture.asset(
                "assets/images/car_x2C__salesman_x2C__service_x2C__manager_x2C__person.svg"),
            title: textStyle(
                text: "Do you want to check the car before buying it?",
                color: Color(0xff092042),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonCar(
                text: "Test driving the car",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
    });
  }
}
