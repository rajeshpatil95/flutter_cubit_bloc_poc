import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/background_image.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_appbar.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_drawer.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';

import '../../components/dropdown_menu.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final TextEditingController textPasscodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.transparent,
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21,
                      right: 20.67,
                    ),
                    child: CustomAppBar(
                      scaffoldKey: _scaffoldKey,
                    ),
                  ),
                  const SizedBox(height: 43),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 32,
                      right: 31,
                    ),
                    child: Text(
                      'BROADBAND THAT CAN HANDLE ANYTHING',
                      style: TextStyle(
                        color: Color(0xffF3F3F3),
                        fontSize: 38,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6,
                      right: 5,
                    ),
                    child: Image.asset(
                      'assets/images/bb_hero.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21,
                      right: 21,
                      top: 24,
                    ),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter your postcode',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Rubrik',
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          maxLength: 7,
                          controller: textPasscodeController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: 'SE3 7PQ',
                              fillColor: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 21, right: 21),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select your address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Rubrik',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.5),
                  const FittedBox(
                      child: Padding(
                    padding: EdgeInsets.only(left: 21, right: 20),
                    child: DropDownMenu(
                      width: 360,
                      height: 60,
                      radiusBorder: 16,
                    ),
                  )),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21,
                      right: 21,
                    ),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Want to keep your phone number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Rubrik',
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '(Optional)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Rubrik',
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 12,
                          decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              filled: true,
                              hintStyle: const TextStyle(
                                color: AppColors.hintColor,
                              ),
                              hintMaxLines: 1,
                              hintText:
                                  'Enter your phone number if you have one',
                              fillColor: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      bottom: 60,
                      right: 20,
                      left: 21,
                    ),
                    child: PrimaryButton(
                      text: 'Discover what you can get',
                      onPressed: () {
                        Navigator.pushNamed(context, HOME_ROUTE);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
