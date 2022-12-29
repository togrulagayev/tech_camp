import 'package:flutter/material.dart';
import 'package:tech_camp/model/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          right: kDefaultPadding,
          left: kDefaultPadding,
        ),
        padding: const EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Andika',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Icon(
              iconData,
              size: 30.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
