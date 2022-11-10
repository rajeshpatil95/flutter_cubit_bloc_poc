import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Review & place your order',
              style: TextStyle(
                color: AppColors.greyGradient,
                fontSize: 22,
                fontFamily: AppFont.rubrikBold,
                fontWeight: AppFontWeight.fontWeightBold,
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
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
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 18,
                      top: 20,
                      bottom: 16,
                    ),
                    child: Text(
                      'Your details',
                      style: TextStyle(
                        color: AppColors.greyGradient,
                        fontSize: 18,
                        fontFamily: AppFont.rubrikBold,
                        fontWeight: AppFontWeight.fontWeightBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user_black.png',
                          height: 17.9,
                          width: 18,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Darren Smith',
                          style: TextStyle(
                            color: AppColors.greyGradient,
                            fontSize: 18,
                            fontFamily: AppFont.rubrikMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/email.png',
                          height: 17.9,
                          width: 18,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'email@example.com',
                          style: TextStyle(
                            color: AppColors.greyGradient,
                            fontSize: 18,
                            fontFamily: AppFont.rubrikMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user_black.png',
                          height: 17.9,
                          width: 18,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Darren Smith',
                          style: TextStyle(
                            color: AppColors.greyGradient,
                            fontSize: 18,
                            fontFamily: AppFont.rubrikMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user_black.png',
                          height: 17.9,
                          width: 18,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Darren Smith',
                          style: TextStyle(
                            color: AppColors.greyGradient,
                            fontSize: 18,
                            fontFamily: AppFont.rubrikMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
