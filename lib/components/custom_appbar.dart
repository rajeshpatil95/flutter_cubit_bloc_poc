import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Key scaffoldKey;

  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/images/hamberger.png',
              height: 16,
              width: 22,
            ),
          ),
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Image.asset(
                'assets/images/search.png',
                height: 22,
                width: 22,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 99),
              child: Image.asset(
                'assets/images/logo.png',
                height: 80,
                width: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 115,
              right: 20,
            ),
            child: Image.asset(
              'assets/images/user.png',
              height: 22,
              width: 22,
            ),
          ),
        ],
      ),
    );
  }
}
