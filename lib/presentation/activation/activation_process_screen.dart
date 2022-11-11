import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/presentation/activation/about_you_tab.dart';
import 'package:flutter_cubit_bloc_poc/presentation/activation/activation_header.dart';
import 'package:flutter_cubit_bloc_poc/presentation/activation/billing_tab.dart';
import 'package:flutter_cubit_bloc_poc/presentation/activation/review_tab.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';
import '../../style/spacing.dart';

class ActivationProcessScreen extends StatefulWidget {
  const ActivationProcessScreen({Key? key}) : super(key: key);

  @override
  State<ActivationProcessScreen> createState() =>
      _ActivationProcessScreenState();
}

class _ActivationProcessScreenState extends State<ActivationProcessScreen> {
  late ActivationTabs _currentActiveTab;
  late bool? isAboutYouToBillingEnabled;
  late bool? isBillingToReviewEnabled;

  @override
  void initState() {
    super.initState();
    _currentActiveTab = ActivationTabs.aboutYou;
    isAboutYouToBillingEnabled = false;
    isBillingToReviewEnabled = false;
  }

  Widget _tabWidget() {
    if (_currentActiveTab == ActivationTabs.aboutYou) {
      return AboutYouTab(onPressed: (value) {
        setState(() {
          isAboutYouToBillingEnabled = value;
          _currentActiveTab = ActivationTabs.billing;
        });
      });
    } else if (_currentActiveTab == ActivationTabs.billing) {
      return BillingTab(onPressed: (value) {
        setState(() {
          isBillingToReviewEnabled = value;
          _currentActiveTab = ActivationTabs.review;
        });
      });
    } else {
      return const ReviewTab();
    }
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
              ),
              (isAboutYouToBillingEnabled == true &&
                      isBillingToReviewEnabled == true)
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PAY_DEPOSIT_ROUTE);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.accent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: const Text(
                        'Place Order',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: AppFontSize.size18,
                            color: AppColors.black),
                      ),
                    )
                  : Container()
            ],
          ),
        ));
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
              delegate: ActivationHeader(
                  isAboutYouToBillingEnabled: isAboutYouToBillingEnabled,
                  isBillingToReviewEnabled: isBillingToReviewEnabled,
                  onPressed: (value) {
                    setState(() {
                      _currentActiveTab = value;
                    });
                  }),
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: true,
              child: Stack(
                children: <Widget>[_tabWidget(), _checkoutWidget(context)],
              ),
            )
          ],
        )));
  }
}
