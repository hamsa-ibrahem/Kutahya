import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class buildImage extends StatelessWidget {
  final image;
  final index;

  const buildImage({super.key, required this.image, this.index});

  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      image,
    ));
  }
}

//dot//
class buildindcator extends StatelessWidget {
  final activeindex;

  const buildindcator({super.key, required this.activeindex});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeindex,
      count: 7,
      effect: ExpandingDotsEffect(
          activeDotColor: Color(0xffF47D21),
          dotWidth: 10,
          dotHeight: 10,
          dotColor: CupertinoColors.white),
    );
  }
}

class IconButtonCar extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;

  const IconButtonCar({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}

class textStyle extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily = "Montserrat";
  final double? fontSize;

  const textStyle(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
     // textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          fontSize: fontSize),
    );
    throw UnimplementedError();
  }
}

class listTitleKutahya extends StatelessWidget {
  final double? height;
  final Color? color;
  final BoxBorder? border;
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final bool isThreeLine = false;

  const listTitleKutahya(
      {super.key,
      this.color,
      this.title,
      this.subtitle,
      this.leading,
      this.height,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 328,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: border,
      ),
      child: Center(
          child: ListTile(
              title: title,
              subtitle: subtitle,
              leading: leading,
              isThreeLine: isThreeLine)),
    );
  }
}

class vehicleDetails extends StatelessWidget {
  final List<String?> details;

  const vehicleDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final List<String?> icondetails = [
      "assets/images/branding_brand_trust_trusted 1.svg",
      "assets/images/country-flag-location_svgrepo.com.svg",
      "assets/images/data-exploration-data-center-model-management_svgrepo.com.svg",
      "assets/images/date-range_svgrepo.com.svg",
      "assets/images/Page-1.svg",
      "assets/images/Speedometer.svg",
      "assets/images/car-engine-parts-svgrepo-com (1) 1.svg",
      "assets/images/noun-engine-block-5747577 1.svg",
      "assets/images/transmission_svgrepo.com.svg",
      "assets/images/bottle-chemical-engine-svgrepo-com 1.svg",
      "assets/images/color-correction_svgrepo.com.svg",
      "assets/images/wired-outline-917-license-plate 1.svg",
      "assets/images/car-seat-belt-icon 1.svg",
      "assets/images/cloth_svgrepo.com.svg",
      "assets/images/car-tire-wheel-icon 1.svg",
      "assets/images/magic-stick-3_svgrepo.com.svg",
      "assets/images/location-1_svgrepo.com.svg"
    ];
    final List<String?> titledetails = [
      "Brand",
      "Country of origin",
      "Model",
      "Year of manufacture",
      "Car type",
      "Mileage",
      "Engine size",
      "Cylinders",
      "Transmission ",
      "Fuel Type",
      "Car color",
      "Plate number details",
      "Seats count",
      "Seat Material",
      "Car drivetrain system",
      "Car state",
      "Located at"
    ];
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[0]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[0]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Text("${details[0]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[1]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[1]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text("${details[1]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[2]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[2]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 145),
              child: Text("${details[2]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[3]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[3]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("${details[3]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[4]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[4]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Text("${details[4]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[5]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[5]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Text("${details[5]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[6]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[6]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text("${details[6]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[7]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[7]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 135),
              child: Text("${details[7]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[8]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[8]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text("${details[8]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[9]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[9]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Text("${details[9]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[10]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[10]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Text("${details[10]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[11]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[11]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("${details[11]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[12]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[12]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 115),
              child: Text("${details[12]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[13]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[13]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text("${details[13]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[14]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[14]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("${details[14]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[15]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[15]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 135),
              child: Text("${details[15]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SvgPicture.asset("${icondetails[16]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${titledetails[16]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text("${details[16]}"),
            ),

            //Text("${details[index]}"),
          ],
        ),
      ],
    );
  }
}

class extraFeatures extends StatelessWidget {
  const extraFeatures({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 80,
          width: 88,
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(icon, width: 24, height: 24),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(text,textAlign: TextAlign.center,style: TextStyle( color: Color(0xff828282),
                            fontSize: 11,
                            fontWeight: FontWeight.w400),)
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}

class ButtonCar extends StatelessWidget {
  final String text;

  const ButtonCar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 184,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff092042)),
      child: InkWell(
          onTap: () {},
          child: Center(
              child: textStyle(
            text: text,
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ))),
    );
  }
}

class whatsapp_callButton extends StatelessWidget {
  final String icon;
  final String text;
  final Color? color;

  whatsapp_callButton({
    super.key,
    required this.icon,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 156,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(icon),
        SizedBox(
          width: 10,
        ),
        textStyle(
          text: text,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 12,
        )
      ]),
    );
  }
}

class tabButtonComponant extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final Color? color;

  const tabButtonComponant(
      {super.key, this.onPressed, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: onPressed, child: child),
        Container(
            height: 4,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8), topLeft: Radius.circular(8)),
              color: color,
            )),
      ],
    );
  }
}
