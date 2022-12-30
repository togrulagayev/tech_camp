import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_camp/screens/cabinet_page/class/cabinet_classes.dart';
import 'package:tech_camp/screens/payment_page/payment_screen.dart';

import '../../model/constants.dart';

class CabinetScreen extends StatelessWidget {
  const CabinetScreen({super.key});
  static String routeName = 'CabinetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kTestColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Şəxsi Kabinet'),
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
                      Icons.report_outlined,
                      size: 25.0,
                      color: kOtherColor,
                    ),
                    kHalfWidthSizedBox,
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
              Expanded(
                child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: kTopBorderRadius,
                  ),
                  child: SingleChildScrollView(
                    //for padding
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                              onPress: () {},
                              icon: 'assets/icons/atd.svg',
                              title: 'Davamiyyət',
                            ),
                            HomeCard(
                              onPress: () {
                                //go to assignment screen here
                              },
                              icon: 'assets/icons/table.svg',
                              title: 'Dərs Cədvəli',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                              onPress: () {},
                              icon: 'assets/icons/exam.svg',
                              title: 'Imtahanlar',
                            ),
                            HomeCard(
                              onPress: () {},
                              icon: 'assets/icons/task.svg',
                              title: 'Tapşırıqlar',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                              onPress: () {
                                Navigator.pushNamed(context, PaymentScreen.routeName);
                              },
                              icon: 'assets/icons/pay.svg',
                              title: 'Ödəniş',
                            ),
                            HomeCard(
                              onPress: () {},
                              icon: 'assets/icons/exit.svg',
                              title: 'Çıxış Et',
                            ),
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     HomeCard(
                        //       onPress: () {
                        //         Navigator.pushNamed(
                        //             context, PaymentScreen.routeName);
                        //       },
                        //       icon: 'assets/icons/groups.svg',
                        //       title: 'Qruplar',
                        //     ),
                        //     HomeCard(
                        //       onPress: () {
                        //         //go to assignment screen here
                        //       },
                        //       icon: 'assets/icons/table.svg',
                        //       title: 'Dərs Cədvəli',
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     HomeCard(
                        //       onPress: () {},
                        //       icon: 'assets/icons/exam.svg',
                        //       title: 'Imtahanlar',
                        //     ),
                        //     HomeCard(
                        //       onPress: () {},
                        //       icon: 'assets/icons/task.svg',
                        //       title: 'Tapşırıqlar',
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     HomeCard(
                        //       onPress: () {},
                        //       icon: 'assets/icons/settings.svg',
                        //       title: 'Tənzimləmələr',
                        //     ),
                        //     HomeCard(
                        //       onPress: () {},
                        //       icon: 'assets/icons/exit.svg',
                        //       title: 'Çıxış Et',
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
