import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/components/secondary_button.dart';
import 'package:flutter_cubit_bloc_poc/style/spacing.dart';
import 'package:flutter_cubit_bloc_poc/utils/date_picker.dart';

import '../../components/dropdown_menu.dart';
import '../../style/app_colors.dart';
import '../../style/font.dart';

class AboutYouTab extends StatefulWidget {
  final Function? onPressed;

  const AboutYouTab({super.key, this.onPressed});

  @override
  State<AboutYouTab> createState() => _AboutYouTabState();
}

class _AboutYouTabState extends State<AboutYouTab> {
  TextEditingController _dobController = TextEditingController();
  TextEditingController _empStartController = TextEditingController();
  TextEditingController _bankStartController = TextEditingController();
  int _isBestNumber = 0, _confirmPlace = 0;
  List<String> dropDownItems = [
    'Pick your item_1',
    'Pick your item_2',
    'Pick your item_3',
    'Pick your item_4'
  ];

  Widget _personalInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //First name
        const Text('First name',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size16,
                color: AppColors.grey)),
        AppSpacing.sizeBoxHt10,
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
              fillColor: Colors.white),
        ),
        //Last name
        AppSpacing.sizeBoxHt20,
        const Text('Last name',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size16,
                color: AppColors.grey)),
        AppSpacing.sizeBoxHt10,
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
              fillColor: Colors.white),
        ),
        //DOB
        AppSpacing.sizeBoxHt20,
        const Text('DOB',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size16,
                color: AppColors.grey)),
        AppSpacing.sizeBoxHt10,
        TextField(
          onTap: () async {
            DateTime picked = await DatePikcer().selectDate(context);
            setState(() {
              _dobController.text =
                  ('${picked.day}/${picked.month}/${picked.year}');
            });
          },
          controller: _dobController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
              fillColor: Colors.white),
        ),
        //Mobile number
        AppSpacing.sizeBoxHt20,
        const Text('Mobile number',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size16,
                color: AppColors.grey)),
        AppSpacing.sizeBoxHt10,
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
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
                Radio(
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return AppColors.primary;
                    }),
                    value: 0,
                    groupValue: _isBestNumber,
                    onChanged: (index) {
                      setState(() {
                        _isBestNumber = index!;
                      });
                    }),
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
                Radio(
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return AppColors.primary;
                    }),
                    value: 1,
                    groupValue: _isBestNumber,
                    onChanged: (index) {
                      setState(() {
                        _isBestNumber = index!;
                      });
                    }),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _installationInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        AppSpacing.sizeBoxHt20,
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
      ],
    );
  }

  Widget _residenceInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('How long have you lived at this address?',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.size18,
                color: AppColors.black)),
        Row(
          children: [
            Radio(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return AppColors.primary;
                }),
                value: 0,
                groupValue: _confirmPlace,
                onChanged: (index) {
                  setState(() {
                    _confirmPlace = index!;
                  });
                }),
            const Text('3 years or more',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.size16,
                    color: AppColors.grey))
          ],
        ),
        Row(
          children: [
            Radio(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return AppColors.primary;
                }),
                value: 1,
                groupValue: _confirmPlace,
                onChanged: (index) {
                  setState(() {
                    _confirmPlace = index!;
                  });
                }),
            const Text('Less than 3 years',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.size16,
                    color: AppColors.grey))
          ],
        ),
        Row(
          children: [
            Radio(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return AppColors.primary;
                }),
                value: 2,
                groupValue: _confirmPlace,
                onChanged: (index) {
                  setState(() {
                    _confirmPlace = index!;
                  });
                }),
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
        FittedBox(
            child: DropDownMenu(
          width: 380,
          height: 65,
          radiusBorder: 8,
          dropDownItems: dropDownItems,
        )),
      ],
    );
  }

  Widget _employementInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Employement status',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.size18,
                color: AppColors.black)),
        AppSpacing.sizeBoxHt10,
        FittedBox(
            child: DropDownMenu(
          width: 380,
          height: 65,
          radiusBorder: 8,
          dropDownItems: dropDownItems,
        )),
        AppSpacing.sizeBoxHt20,
        const Text('Date started current employment status',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.size18,
                color: AppColors.black)),
        AppSpacing.sizeBoxHt10,
        TextField(
          onTap: () async {
            DateTime picked = await DatePikcer().selectDate(context);
            setState(() {
              _empStartController.text =
                  ('${picked.day}/${picked.month}/${picked.year}');
            });
          },
          controller: _empStartController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
              fillColor: Colors.white),
        ),
      ],
    );
  }

  Widget _bankingInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date joined bank',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.size18,
                color: AppColors.black)),
        AppSpacing.sizeBoxHt10,
        TextField(
          onTap: () async {
            DateTime picked = await DatePikcer().selectDate(context);
            setState(() {
              _bankStartController.text =
                  ('${picked.day}/${picked.month}/${picked.year}');
            });
          },
          controller: _bankStartController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.grey),
              fillColor: Colors.white),
        ),
        AppSpacing.sizeBoxHt20,
        const Text('Additional needs',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.size18,
                color: AppColors.black)),
        AppSpacing.sizeBoxHt10,
        const Text('Customer with additional needs',
            textAlign: TextAlign.start,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size14,
                color: AppColors.primary)),
      ],
    );
  }

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
          _personalInfoWidget(),
          AppSpacing.sizeBoxHt20,
          _installationInfoWidget(),
          AppSpacing.sizeBoxHt20,
          _residenceInfoWidget(),
          AppSpacing.sizeBoxHt20,
          _employementInfoWidget(),
          AppSpacing.sizeBoxHt20,
          _bankingInfoWidget(),
          AppSpacing.sizeBoxHt30,
          SecondaryButton(
            text: 'Continue',
            onPressed: () {
              widget.onPressed!(true);
            },
          ),
        ],
      ),
    );
  }
}
