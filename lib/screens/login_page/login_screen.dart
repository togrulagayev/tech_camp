import 'package:flutter/material.dart';
import 'package:tech_camp/components/custom_buttons.dart';
import 'package:tech_camp/model/constants.dart';
import 'package:tech_camp/screens/home_page/home_screen.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.white,
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: Colors.white,
              child: Column(
                children: const [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90.0),
                        bottomRight: Radius.circular(90.0)),
                    child: Image(
                      image: AssetImage('assets/images/backg.png'),
                    ),
                  ),
                  // Padding(padding: EdgeInsets.only(top: 30.0)),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.8,
              // color: Colors.white,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Davam etmək üçün daxil olun',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Andika',
                          fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          buildEmailMethod(),
                          const SizedBox(height: kDefaultPadding),
                          buildPasswordMethod(),
                          const SizedBox(height: kDefaultPadding),
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            iconData: Icons.arrow_forward_ios_outlined,
                            title: 'DAXİL OL',
                          ),
                          sizedBox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Şifrəni Unutdum',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 15.0,
                                  fontFamily: 'IstokWeb',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          sizedBox,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailMethod() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: kTextBlackColor,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      decoration: const InputDecoration(
        labelText: 'E-mail və ya telefon nömrəsi',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        RegExp regExp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'E-mail daxil edin';
        } else if (!regExp.hasMatch(value)) {
          return 'E-mail düzgün deyil!';
        }
      },
    );
  }

  TextFormField buildPasswordMethod() {
    return TextFormField(
      obscureText: _passwordVisible,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: kTextBlackColor,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        labelText: 'Şifrə',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      // ignore: body_might_complete_normally_nullable
      validator: ((value) {
        if (value!.length < 5) {
          return 'Şifrə ən az 6 simvoldan ibarət olmalıdır';
        }
      }),
    );
  }
}
