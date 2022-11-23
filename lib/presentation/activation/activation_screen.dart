import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/secondary_button.dart';
import 'package:flutter_cubit_bloc_poc/navigation/route_constants.dart';

import '../../components/primary_button.dart';
import '../../style/app_colors.dart';
import '../../style/font.dart';
import '../../style/spacing.dart';
import '../home/search_header.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = false;
  }

  Widget _checkoutWidget(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 75,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: AppColors.greyGradient,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text('\u{00A3}XX.xx',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.size20,
                          color: AppColors.white)),
                  AppSpacing.sizeBoxHt5,
                  Text('monthly',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: AppFontSize.size16,
                          color: AppColors.white)),
                ],
              ),
              Column(
                children: const [
                  Text('\u{00A3}XX.xx',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.size20,
                          color: AppColors.white)),
                  AppSpacing.sizeBoxHt5,
                  Text('monthly',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: AppFontSize.size16,
                          color: AppColors.white)),
                ],
              )
            ],
          ),
        ));
  }

  Widget _questionnaireWidget() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 100),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
              'Do you currently pay for a broadband service at this address ?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size18,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt20,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Yes',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.size18,
                      color: AppColors.black)),
              AppSpacing.sizeBoxWt5,
              CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
              AppSpacing.sizeBoxWt5,
              const Text('No',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.size18,
                      color: AppColors.black)),
            ],
          ),
          const Spacer(),
          SecondaryButton(
            text: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, ACTIVATION_PROCESS_ROUTE);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SearchHeader(title: 'Activation'),
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: true,
              child: Stack(
                children: <Widget>[
                  _questionnaireWidget(),
                  _checkoutWidget(context)
                ],
              ),
            )
          ],
        )));
  }
}
