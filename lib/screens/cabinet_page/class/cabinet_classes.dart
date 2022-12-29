import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_camp/model/constants.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 1.h),
        width: 40.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: SizerUtil.deviceType == DeviceType.tablet ? 70.sp : 70.sp,
              width: SizerUtil.deviceType == DeviceType.tablet ? 70.sp : 70.sp,
              color: kOtherColor,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: kOtherColor,
                    fontSize: 18.0,
                    fontFamily: 'IstokWeb')),
          ],
        ),
      ),
    );
  }
}