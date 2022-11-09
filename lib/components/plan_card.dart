import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';

import '../style/app_colors.dart';
import '../style/font.dart';
import '../style/spacing.dart';

class PlanCard extends StatefulWidget {
  const PlanCard({Key? key}) : super(key: key);

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, PRODUCT_DETAIL_ROUTE),
        child: Card(
            elevation: 4,
            color: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppSpacing.sizeBoxHt10,
                  const Text("Get 1 month speed trial of full fibre 500",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppFontSize.size16,
                          color: AppColors.accent)),
                  AppSpacing.sizeBoxHt10,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.primary),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSpacing.sizeBoxHt10,
                        const Text('Full Fibre 150',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: AppFontSize.size24,
                                color: AppColors.black)),
                        AppSpacing.sizeBoxHt20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text('\u{00A3}9.99',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppFontSize.size20,
                                        color: AppColors.black)),
                                AppSpacing.sizeBoxHt5,
                                Text('UpFront',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: AppFontSize.size16,
                                        color: AppColors.grey)),
                              ],
                            ),
                            Column(
                              children: const [
                                Text('\u{00A3}XX.xx',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppFontSize.size20,
                                        color: AppColors.black)),
                                AppSpacing.sizeBoxHt5,
                                Text('Monthly',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: AppFontSize.size16,
                                        color: AppColors.grey)),
                              ],
                            )
                          ],
                        ),
                        AppSpacing.sizeBoxHt20,
                        const Center(
                          child: Text('24 month contract',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: AppFontSize.size18,
                                  color: AppColors.grey)),
                        ),
                        AppSpacing.sizeBoxHt30,
                        const Text(
                            '150mbps download speed \n100 mbps Speed Guarantee\n30 mbps upload speed\nSmart hub router\nNo landline included',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.size14,
                                color: AppColors.grey)),
                        AppSpacing.sizeBoxHt20,
                        const Center(
                          child: Text('Show more',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.normal,
                                  fontSize: AppFontSize.size16,
                                  color: AppColors.primary)),
                        ),
                        AppSpacing.sizeBoxHt10,
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
