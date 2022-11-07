import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/background_image.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_appbar.dart';
import 'package:flutter_cubit_bloc_poc/components/textfield_group.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

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
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 21, left: 21, top: 24, bottom: 29),
                    child: Column(
                      children: const [
                        TextFieldGroup(
                          textTitle: 'Enter your passcode',
                          textFieldHint: '',
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        TextFieldGroup(
                          textTitle: 'Select your address',
                          textFieldHint: '',
                        ),
                      ],
                    ),
                  ),
                  // padding: const EdgeInsets.only(left: 76,right: 75,top: 21,bottom: 33),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 21,
                      bottom: 33,
                      right: 20,
                      left: 21,
                    ),
                    child: PrimaryButton(
                      text: 'Continue',
                      onPressed: () {},
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
