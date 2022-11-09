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
          AppSpacing.sizeBoxHt10
        ],
      ),
    );
  }
}
