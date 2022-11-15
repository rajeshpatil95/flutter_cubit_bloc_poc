import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/coloredTitleText.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';

Widget _yourDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(top: 4),
        child: Text(
          'Review & place your order',
          style: TextStyle(
            color: AppColors.greyGradient,
            fontSize: 22,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
      ),
      const SizedBox(
        height: 23,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: AppColors.grey,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Your details',
                style: TextStyle(
                  color: AppColors.greyGradient,
                  fontSize: 18,
                  fontFamily: AppFont.rubrikMedium,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              SizedBox(height: 18),
              IconWithText(
                image: 'assets/images/user_black.png',
                imageHeight: 17.9,
                imageWidth: 18,
                text: 'Darren Smith',
                fontSize: 18,
                textColor: AppColors.greyGradient,
                fontFamily: AppFont.rubrikMedium,
              ),
              SizedBox(height: 18),
              IconWithText(
                image: 'assets/images/email.png',
                imageHeight: 13,
                imageWidth: 18,
                text: 'email@example.com',
                fontSize: 18,
                textColor: AppColors.greyGradient,
                fontFamily: AppFont.rubrikMedium,
              ),
              SizedBox(height: 18),
              IconWithText(
                image: 'assets/images/icon_mobile.png',
                imageHeight: 17,
                imageWidth: 18,
                text: '0790 012 3456',
                fontSize: 18,
                textColor: AppColors.greyGradient,
                fontFamily: AppFont.rubrikMedium,
              ),
              SizedBox(height: 18),
              IconWithText(
                image: 'assets/images/icon_location.png',
                imageHeight: 17,
                imageWidth: 18,
                text: '5 Puddle Lane, SE3 7PQ',
                fontSize: 18,
                textColor: AppColors.greyGradient,
                fontFamily: AppFont.rubrikMedium,
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget _monthlyCost() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Monthly costs',
                      style: TextStyle(
                        color: AppColors.greyGradient,
                        fontSize: 18,
                        fontFamily: AppFont.rubrikMedium,
                        fontWeight: AppFontWeight.fontWeightBold,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/arrow_up.png',
                    height: 17.9,
                    width: 18,
                  ),
                ],
              ),
              const SizedBox(height: 17),
              const ColoredTitleText(titleText: 'Broadband'),
              const SizedBox(height: 6),
              const FiberPlanCost(
                title: 'Full Fibre 36',
                cost: '£XX.xx',
                costSize: 24,
              ),
              const SizedBox(height: 17),
              const Text(
                '36Mbps download speed\n30Mbps Speed Guarantee\n10Mbps upload speed',
                style: TextStyle(
                  height: 2,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Included with broadband plan',
                style: TextStyle(
                  height: 2,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              const Text(
                'Smart Hub',
                style: TextStyle(
                  height: 2,
                  color: AppColors.greyGradient,
                  fontSize: 16,
                  fontFamily: AppFont.rubrikBold,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 13,
                  bottom: 16,
                ),
                child: Divider(
                  color: AppColors.greyWhite,
                ),
              ),
              const FiberPlanCost(
                costSize: 18,
                title: 'Smart WiFi',
                cost: '£XX.xx',
              ),
              const SizedBox(height: 16),
              const FiberPlanCost(
                costSize: 18,
                title: 'Smart Hybrid Connect',
                cost: '£XX.xx',
              ),
              const SizedBox(height: 16),
              const FiberPlanCost(
                costSize: 18,
                title: 'EE Cyber Security',
                cost: '£XX.xx',
              ),
              // const SizedBox(height: 16),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 13,
            bottom: 17,
          ),
          child: Divider(
            color: AppColors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ColoredTitleText(titleText: 'Home phone call plan'),
              SizedBox(height: 8),
              FiberPlanCost(
                costSize: 24,
                title: 'Unlimited',
                cost: '£XX.xx',
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 13,
            bottom: 17,
          ),
          child: Divider(
            color: AppColors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ColoredTitleText(titleText: 'TV'),
              SizedBox(height: 8),
              FiberPlanCost(
                costSize: 24,
                title: 'Big Entertainment',
                cost: '£XX.xx',
              ),
              SizedBox(height: 8),
              Text(
                'NOW Entertainment,\n NOW Cinema Memberships\n Netflix Basic',
                style: TextStyle(
                  height: 1,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              Text(
                'Included with TV package',
                style: TextStyle(
                  height: 2,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
              Text(
                'EE TV Box Pro',
                style: TextStyle(
                  height: 2,
                  color: AppColors.greyGradient,
                  fontSize: 16,
                  fontFamily: AppFont.rubrikBold,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 13,
            bottom: 17,
          ),
          child: Divider(
            color: AppColors.grey,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 27),
          child: FiberPlanCost(
            costSize: 24,
            title: 'Upgrade to Netflix\nPremium',
            cost: '£XX.xx',
          ),
        ),
      ],
    ),
  );
}

Widget _upfrontCost() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Upfront costs',
                  style: TextStyle(
                    color: AppColors.greyGradient,
                    fontSize: 18,
                    fontFamily: AppFont.rubrikMedium,
                    fontWeight: AppFontWeight.fontWeightBold,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/arrow_up.png',
                height: 17.9,
                width: 18,
              ),
            ],
          ),
          const SizedBox(height: 17),
          const Text(
            'All upfront costs will be added to\nyour first monthly bill',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrikMedium,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          const SizedBox(height: 31),
          const ColoredTitleText(titleText: 'Broadband'),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'Home phone Pro',
            cost: '£0',
            costSize: 22,
          ),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'Battery Backup Unit',
            cost: '£00.00',
            costSize: 22,
          ),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'Expert Set-Up',
            cost: '£00.00',
            costSize: 22,
          ),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'EE TV Box Pro',
            cost: '£00.00',
            costSize: 22,
          ),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'Broadband activation fee',
            cost: '£00.00',
            costSize: 22,
          ),
          const SizedBox(height: 8),
          const FiberPlanCost(
            title: 'Postage and packaging',
            cost: '£00.00',
            costSize: 22,
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
}

Widget _installation() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Your installation',
            style: TextStyle(
              color: AppColors.greyGradient,
              fontSize: 18,
              fontFamily: AppFont.rubrikBold,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          SizedBox(height: 17),
          Text(
            'Our engineer will visit between',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          SizedBox(height: 8),
          IconWithText(
            image: 'assets/images/icon_clock_green.png',
            imageHeight: 22,
            imageWidth: 22,
            text: '8.00 am - 1.00 pm',
            fontSize: 20,
            textColor: AppColors.primary,
            fontFamily: AppFont.rubrikBold,
          ),
          SizedBox(height: 8),
          IconWithText(
            image: 'assets/images/icon_calender_green.png',
            imageHeight: 20,
            imageWidth: 20,
            text: '30 January 2022',
            fontSize: 20,
            textColor: AppColors.primary,
            fontFamily: AppFont.rubrikBold,
          ),
          SizedBox(height: 8),
          Text(
            'Your equipment is expected to be\ndelivered on',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          SizedBox(height: 8),
          IconWithText(
            image: 'assets/images/icon_calender_green.png',
            imageHeight: 20,
            imageWidth: 20,
            text: '28 January 2022',
            fontSize: 20,
            textColor: AppColors.primary,
            fontFamily: AppFont.rubrikBold,
          ),
          SizedBox(height: 8),
          Text(
            'Delivery address',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          SizedBox(height: 8),
          IconWithText(
            image: 'assets/images/icon_location_green.png',
            imageHeight: 35,
            imageWidth: 25,
            text: '5 Puddle Lane, SE3 7PQ',
            fontSize: 20,
            textColor: AppColors.primary,
            fontFamily: AppFont.rubrikBold,
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'We\'re usually able to come on the\ndate you choose but occasionally\nwe might have to rearrange. We’ll\n either confirm the date or offer\nyou an alternative within 3\nworking days.\n',
                style: TextStyle(
                  letterSpacing: 1,
                  height: 2,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
            ),
          ),
          Text(
            'BT Sport App',
            style: TextStyle(
              color: AppColors.greyGradient,
              fontSize: 18,
              fontFamily: AppFont.rubrikBold,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can start using the app as\nsoon as you’ve placed your order.\nYou’ll need to log in to your\naccount to start watching.\n',
                style: TextStyle(
                  letterSpacing: 1,
                  height: 2,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.fontWeightBold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class ReviewTab extends StatefulWidget {
  const ReviewTab({super.key});

  @override
  State<ReviewTab> createState() => _ReviewTabState();
}

class _ReviewTabState extends State<ReviewTab> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            _yourDetails(),
            const SizedBox(height: 30),
            _monthlyCost(),
            const SizedBox(height: 30),
            _upfrontCost(),
            const SizedBox(height: 30),
            const GreyCard(),
            const SizedBox(height: 30),
            _installation(),
            const SizedBox(height: 30),
            _bestDealContext(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  _bestDealContext() {
    bool checkEmail = true;
    bool checkText = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Stay in the loop for our best deals',
          style: TextStyle(
            letterSpacing: 1,
            color: AppColors.greyGradient,
            fontSize: 18,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        const SizedBox(height: 8),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Don’t miss out on special offers from EE.\nWe’ll contact you by email and text with\npersonalised offers when it’s time to\nupgrade, and we’ll tell you about other\ngreat deals and updates. Opt out by\nunticking boxes below (or just unsubscribe\nif we send you a message).\n',
            style: TextStyle(
              letterSpacing: 1,
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCheckBox(
              value: checkEmail,
              shouldShowBorder: true,
              borderColor: AppColors.greyWhite,
              checkedFillColor: AppColors.primary,
              uncheckedFillColor: AppColors.lightWhite,
              uncheckedIconColor: AppColors.lightWhite,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 24,
              onChanged: (val) {
                setState(() {
                  checkEmail = val;
                });
              },
            ),
            const SizedBox(width: 8),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                'Reach me on email',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: AppFontSize.size18,
                  fontFamily: AppFont.rubrik,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCheckBox(
              value: checkText,
              shouldShowBorder: true,
              borderColor: AppColors.greyWhite,
              checkedFillColor: AppColors.primary,
              uncheckedFillColor: AppColors.lightWhite,
              uncheckedIconColor: AppColors.lightWhite,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 24,
              onChanged: (val) {
                setState(() {
                  checkText = val;
                });
              },
            ),
            const SizedBox(width: 8),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                'Reach me on text',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: AppFontSize.size18,
                  fontFamily: AppFont.rubrik,
                ),
              ),
            ),
          ],
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Occasionally we might call or contact you\nby post if it’s a really special deal, like when\nit’s time to renew your contract. You can\nsay “no” at any time using the unsubscribe\ndetails in the messages we send, or just\ntell us if we call.\n',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
        ),
        const Text(
          'And get more relevant offers',
          style: TextStyle(
            color: AppColors.greyGradient,
            fontSize: 18,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Don’t miss out on special offers from EE.\nWe’ll contact you by email and text with\npersonalised offers when it’s time to\nupgrade, and we’ll tell you about other\ngreat deals and updates. Opt out by\nunticking boxes below (or just unsubscribe\nif we send you a message).\n',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Is that okay? ',
          style: TextStyle(
            color: AppColors.greyGradient,
            fontSize: 18,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'What this means',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: AppColors.primary,
            fontSize: 16,
            fontFamily: AppFont.rubrik,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yes',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.medium,
                  fontSize: 22,
                  color: (!true) ? AppColors.black : AppColors.primary),
            ),
            const SizedBox(width: 8),
            CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                  print(_switchValue);
                });
              },
            ),
            const SizedBox(width: 8),
            const Text(
              'No',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: AppFont.rubrik,
                  fontWeight: AppFontWeight.medium,
                  fontSize: 22,
                  color: AppColors.greyGradient),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'The legal bit',
          style: TextStyle(
            color: AppColors.greyGradient,
            fontSize: 18,
            fontFamily: AppFont.rubrikBold,
            fontWeight: AppFontWeight.fontWeightBold,
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'By clicking place order you’re agreeing to a 24 month\ncontract for your whole package, starting from your\nactivation date above.\n\n\nThe monthly price for your broadband and landline\n(including call charges, features and plans) will increase\nevery March. The increase is based on the Consumer\nPrice Index rate of inflation published every January\nplus 3.9%. See ee.co.uk/prices for details.\n\n\nYou can cancel this order any time after placing it until\n14 days after your activation date and only pay for any\nchargeable services you’ve used. If you leave after that\nyou may have to pay a charge to end your contract\nearly.\n\n\nIf you cancel or leave later, there will be a charge if you\ndon’t return any of the loaned equipment we send you.\n\n\nOnce we’ve confirmed your order we’ll contact your\nexisting provider to arrange the end of your current\nservice. Please be aware that there may be an early\ntermination charge for your other service.\n\n\nThis is a consumer plan and service and we won’t\nprovide a tax invoice for it. By agreeing to the terms and\nconditions, you are confirming that you are not a VAT\nregistered company using this service for business\npurposes.\n\n',
            style: TextStyle(
              height: 2,
              color: AppColors.grey,
              fontSize: 13,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCheckBox(
              value: checkEmail,
              shouldShowBorder: true,
              borderColor: AppColors.greyWhite,
              checkedFillColor: AppColors.primary,
              uncheckedFillColor: AppColors.lightWhite,
              uncheckedIconColor: AppColors.lightWhite,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 24,
              onChanged: (val) {
                setState(() {
                  checkEmail = val;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                'I accept the',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: AppFontSize.size16,
                  fontFamily: AppFont.rubrikBold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                'terms and conditions',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: AppColors.primary,
                  fontSize: AppFontSize.size16,
                  fontFamily: AppFont.rubrikBold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Read, download or print a summary of the\nservices and products you\'ve chosen.\n',
            style: TextStyle(
              letterSpacing: 1,
              height: 2,
              color: AppColors.grey,
              fontSize: 16,
              fontFamily: AppFont.rubrik,
              fontWeight: AppFontWeight.fontWeightBold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 400,
          height: 65,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white, // background
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side: const BorderSide(color: AppColors.greyGradient),
              ), // foreground
            ),
            onPressed: () {},
            child: const Text(
              'See your summary',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: AppFont.rubrikBold,
                color: AppColors.greyGradient,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
