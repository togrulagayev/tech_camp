import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_camp/model/constants.dart';

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {Key? key, required this.picAddress, required this.onPress})
      : super(key: key);
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        radius: SizerUtil.deviceType == DeviceType.tablet ? 12.w : 14.w,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}

class CabinetDataCard extends StatelessWidget {
  const CabinetDataCard({
    Key? key,
    required this.onPress,
    required this.title,
    required this.iconData,
  }) : super(key: key);
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: 'RobotoSlab',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20.0),
            Icon(
              iconData,
              color: Colors.deepPurple,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}