// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:tech_camp/data/events.dart';
import 'package:tech_camp/model/constants.dart';
import 'package:tech_camp/screens/cabinet_page/cabinet_screen.dart';
import 'package:tech_camp/screens/home_page/class/home_classes.dart';
import 'package:tech_camp/screens/profile_page/my_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
              color: Colors.deepPurpleAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Toğrul',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RobotoSlab',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Ağayev',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RobotoSlab',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Container(
                          width: 200.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Flutter | 001',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontFamily: 'RobotoSlab',
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding / 6),
                    StudentPicture(
                      picAddress: 'assets/images/user1.png',
                      onPress: () {
                        Navigator.pushNamed(
                          context,
                          MyProfileScreen.routeName,
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CabinetDataCard(
                        onPress: () {
                          Navigator.pushNamed(context, CabinetScreen.routeName);
                        },
                        title: 'Şəxsi Kabinet',
                        iconData: Icons.arrow_forward_outlined)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height ,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Tədbirlər',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        // sizedBox,
                        Row(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 1.0,
                                height:
                                    MediaQuery.of(context).size.height / 3.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: PageView.builder(
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              eventImagesList[index]
                                                  .eventImage),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: eventImagesList.length,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


