import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_camp/model/constants.dart';
import 'package:tech_camp/screens/profile_page/class/profile_classes.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});
  static String routeName = 'MyProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hesabım'),
        actions: [
          InkWell(
            onTap: () {
              // bildirimler
            },
            child: Container(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.notifications_active_outlined,
                    size: 25.0,
                    color: kOtherColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/user1.png'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Toğrul Ağayev',
                        style: TextStyle(
                          color: kOtherColor,
                          fontSize: 25.0,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Flutter | 001',
                        style: TextStyle(
                          color: kOtherColor,
                          fontSize: 22.0,
                          fontFamily: 'RobotoSlab',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(title: 'Vəsiqə Nömrəsi', value: 'AA9900066'),
                ProfileDetailRow(
                    title: 'İdentifikasiya Nömrəsi', value: '66SSS99'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(
                    title: 'Tədris Sahəsi', value: 'Flutter'),
                ProfileDetailRow(title: 'Tələbə Kodu', value: '999666'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(
                    title: 'Başlama tarixi', value: '1 Noyabr, 2022'),
                ProfileDetailRow(title: 'Bitmə tarixi', value: '1 Aprel 2023'),
              ],
            ),
            sizedBox,
            const ProfileDetailColumn(
              title: 'E-mail',
              value: 'togrullagayev@gmail.com',
            ),
            const ProfileDetailColumn(
              title: 'Github',
              value: 'github.com/togrulagayev',
            ),
            const ProfileDetailColumn(
              title: 'Əlaqə Nömrəsi',
              value: '+994993333799',
            ),
          ],
        ),
      ),
    );
  }
}


