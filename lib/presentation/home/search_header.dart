import 'dart:math';
import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';
import '../../style/spacing.dart';

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 180;

  SearchHeader();

  Widget _searchBarWidget(num shrinkFactor) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 18),
          height:
              max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
          decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            alignment: Alignment.center,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    color: AppColors.primary,
                  )
                ]),
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                ),
                AppSpacing.sizeBoxWt10,
                Text("5 Puddle Lane, London",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: AppFontSize.size18,
                        color: AppColors.black)),
                Spacer(),
                Text("Change",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: AppFontSize.size18,
                        color: AppColors.primary)),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    num shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) _searchBarWidget(shrinkFactor),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 30, left: 14, right: 14, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                    ),
                  ),
                  AppSpacing.sizeBoxWt20,
                  const Text("Choose your plan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppFontSize.size18,
                          color: AppColors.white)),
                  const Spacer(),
                  const Icon(
                    Icons.account_circle_rounded,
                    size: 26,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
          if (shrinkFactor > 0.5) _searchBarWidget(shrinkFactor),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 230;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
