import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/monthly_card.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/search_header.dart';
import 'package:flutter_cubit_bloc_poc/style/spacing.dart';

import '../../components/extra_card.dart';
import '../../components/plan_card.dart';
import '../../style/app_colors.dart';
import '../../style/font.dart';

final List<PlanCard> planCardList = [
  const PlanCard(),
  const PlanCard(),
  const PlanCard(),
  const PlanCard()
];

final List<ExtraCard> extraCardList = [
  const ExtraCard(),
  const ExtraCard(),
  const ExtraCard(),
  const ExtraCard()
];

final List<MonthlyCard> monthlyCardList = [
  const MonthlyCard(),
  const MonthlyCard(),
  const MonthlyCard(),
  const MonthlyCard()
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _sliverContent() {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('First choose your plan',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size20,
                  color: AppColors.black)),
        ),
        AppSpacing.sizeBoxHt20,
        CarouselSlider(
          options: CarouselOptions(height: 374),
          items: planCardList
              .map((plan) => Container(
                    child: Center(child: plan),
                  ))
              .toList(),
        ),
        AppSpacing.sizeBoxHt20,
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Choose your extras',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size20,
                  color: AppColors.black)),
        ),
        AppSpacing.sizeBoxHt20,
        CarouselSlider(
          options: CarouselOptions(height: 300),
          items: extraCardList
              .map((extra) => Container(
                    child: Center(child: extra),
                  ))
              .toList(),
        ),
        AppSpacing.sizeBoxHt10,
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Need a home phone service?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size20,
                  color: AppColors.black)),
        ),
        AppSpacing.sizeBoxHt10,
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
              'Digital Home Phone is our new phone service, delivered through your broadband for crystal clear calls.\n\nJust add a call plan, plug your phone into your new Smart Hub and you’ll get better quality calls and great new features.',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size14,
                  color: AppColors.grey)),
        ),
        AppSpacing.sizeBoxHt20,
        CarouselSlider(
          options: CarouselOptions(height: 300),
          items: monthlyCardList
              .map((monthlyCard) => Container(
                    child: Center(child: monthlyCard),
                  ))
              .toList(),
        ),
        AppSpacing.sizeBoxHt60,
      ],
    );
  }

  Widget _checkoutWidget() {
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: AppFontSize.size18,
                      color: AppColors.black),
                ),
              )
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
              delegate: SearchHeader(),
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: true,
              child: Stack(
                children: <Widget>[_sliverContent(), _checkoutWidget()],
              ),
            )
          ],
        )));
  }
}
