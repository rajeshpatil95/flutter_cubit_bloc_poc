import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/background_image.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_appbar.dart';
import 'package:flutter_cubit_bloc_poc/components/textfield_group.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';

import '../../components/dropdown_menu.dart';

class LandingPhone extends StatefulWidget {
  const LandingPhone({Key? key}) : super(key: key);

  @override
  State<LandingPhone> createState() => _LandingPhoneState();
}

class _LandingPhoneState extends State<LandingPhone> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 21,
                      right: 20.67,
                    ),
                    child: CustomAppBar(),
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
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 21,
                      right: 21,
                      top: 24,
                    ),
                    child: TextFieldGroup(
                      textTitle: 'Enter your passcode',
                      textFieldHint: '',
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.5),
                  const FittedBox(child: DropDownMenu()),
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
                              fontWeight: FontWeight.bold,
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
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
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
                      top: 21,
                      bottom: 90,
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
