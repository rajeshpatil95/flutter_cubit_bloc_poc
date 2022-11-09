import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/spacing.dart';

import '../../style/app_colors.dart';
import '../../style/font.dart';

class AboutYouTab extends StatelessWidget {
  const AboutYouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 100),
      child: ListView(
        children: [
          const Text('About you',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size18,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt20,
          //First name
          const Text('First name',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.white),
          ),

          //Last name
          AppSpacing.sizeBoxHt10,
          const Text('Last name',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.white),
          ),

          //DOB
          AppSpacing.sizeBoxHt10,
          const Text('DOB',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.white),
          ),

          //Mobile number
          AppSpacing.sizeBoxHt10,
          const Text('Mobile number',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.white),
          ),

          AppSpacing.sizeBoxHt10,
          const Text(
              'Is this the best number for the engineer to call on installation day?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.grey)),
          AppSpacing.sizeBoxHt10,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Yes',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.size16,
                          color: AppColors.grey)),
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                ],
              ),
              AppSpacing.sizeBoxWt20,
              Row(
                children: [
                  const Text('No',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.size16,
                          color: AppColors.grey)),
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                ],
              ),
            ],
          ),
          AppSpacing.sizeBoxHt20,
          const Text('Installation address',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size18,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          const Text('33 Edhill Avenue\nSouth Shields\nLondon\nNE34 9BH',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.size16,
                  color: AppColors.grey)),
          AppSpacing.sizeBoxHt10,

          Center(
            child: Card(
                elevation: 4,
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSpacing.sizeBoxHt10,
                        Row(
                          children: const [
                            Icon(
                              Icons.ac_unit,
                              color: AppColors.primary,
                            ),
                            AppSpacing.sizeBoxWt5,
                            Text('Credit Check',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppFontSize.size18,
                                    color: AppColors.primary)),
                          ],
                        ),
                        AppSpacing.sizeBoxHt10,
                        const Text(
                            'We’ll carry out a credit check using the details you provide. This is a soft credit check and won’t affect your credit score.For more details, see EE’s privacy policy.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.size16,
                                color: AppColors.grey)),
                        AppSpacing.sizeBoxHt10,
                        const Text('Show more',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.size16,
                                color: AppColors.primary)),
                        AppSpacing.sizeBoxHt10,
                      ],
                    ),
                  ),
                )),
          ),

          AppSpacing.sizeBoxHt10,
          const Text('How long have you lived at this address?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size18,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
          Row(
            children: [
              Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
              const Text('3 years or more',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppFontSize.size16,
                      color: AppColors.grey))
            ],
          ),
          AppSpacing.sizeBoxHt10,
          Row(
            children: [
              Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
              const Text('Less than 3 years',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppFontSize.size16,
                      color: AppColors.grey))
            ],
          ),
          AppSpacing.sizeBoxHt10,
          Row(
            children: [
              Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
              const Text('I haven\'t moved in yet',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppFontSize.size16,
                      color: AppColors.grey))
            ],
          ),

          AppSpacing.sizeBoxHt10,
          const Text('Residential status',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.size18,
                  color: AppColors.black)),
          AppSpacing.sizeBoxHt10,
        ],
      ),
    );
  }
}
