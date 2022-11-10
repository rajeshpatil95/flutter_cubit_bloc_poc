import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/style/font.dart';

import '../../components/title_textfield.dart';

class BillingTab extends StatefulWidget {
  const BillingTab({super.key});

  @override
  State<BillingTab> createState() => _BillingTabState();
}

class _BillingTabState extends State<BillingTab> {
  final TextEditingController _txtController = TextEditingController();
  bool shouldCheck = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 31,
            left: 20,
            right: 21,
          ),
          child: Column(
            children: [
              _directDebit(),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.only(
                  right: 11,
                  bottom: 42,
                ),
                child: Text(
                  'You’ll get your bills online. We’ll send you an email reminder every month when your bill is ready to view.',
                  style: TextStyle(
                    color: AppColors.greyGradient,
                    fontSize: AppFontSize.size18,
                    height: 2,
                    fontFamily: AppFont.rubrik,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCheckBox(
                    value: shouldCheck,
                    shouldShowBorder: true,
                    borderColor: AppColors.grey,
                    checkedFillColor: AppColors.primary,
                    uncheckedFillColor: AppColors.greyWhite,
                    uncheckedIconColor: AppColors.greyWhite,
                    borderRadius: 8,
                    borderWidth: 1,
                    checkBoxSize: 24,
                    onChanged: (val) {
                      setState(() {
                        shouldCheck = val;
                      });
                    },
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        'I confirm I \'m the primary account holder for the bank account used to set up the Direct Debit, and that I \'m the only person required to authorise new Direct Debits',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: AppFontSize.size16,
                          height: 2,
                          fontFamily: AppFont.rubrik,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sort code',
                      style: TextStyle(
                        color: AppColors.greyGradient,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubrik Bold',
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _txtController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.grey),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            filled: true,
                            fillColor: AppColors.greyWhite,
                            hintText: '04-00-04',
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                      const SizedBox(height: 16),
                      Flexible(
                        child: Center(
                          child: Image.asset(
                            'assets/images/hsbc_logo.png',
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 43,
              ),
              const TitleTextField(
                text: 'Account number',
              ),
              const SizedBox(
                height: 19,
              ),
              const TitleTextField(
                text: 'Account holder’s name',
              ),
              const SizedBox(
                height: 33,
              ),
              PrimaryButton(
                text: 'Continue',
                onPressed: () {},
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _directDebit() {
  return Row(
    children: [
      Image.asset(
        'assets/images/question.png',
      ),
      const SizedBox(
        width: 7,
      ),
      const Text(
        'See the Direct Debit guarantee',
        style: TextStyle(
          color: AppColors.primary,
          fontSize: AppFontSize.size16,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  );
}
