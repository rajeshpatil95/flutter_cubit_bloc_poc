import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_poc/style/font.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(45),
        bottomRight: Radius.circular(45),
      ),
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 16,
                      bottom: 43,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 103,
                            width: 63,
                            child: Image.asset('assets/images/drawer_logo.png'),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: Navigator.of(context).pop,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 18,
                                width: 15,
                                child: Image.asset('assets/images/close.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      title: const Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: AppFont.rubrikMedium,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      title: const Text(
                        'Help',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: AppFont.rubrikMedium,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      title: const Text(
                        'Our responsibility',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: AppFont.rubrikMedium,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      title: const Text(
                        'Our company',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: AppFont.rubrikMedium,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      title: const Text(
                        'Legals',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: AppFont.rubrikMedium,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/twitter.png',
                        height: 49,
                        width: 49,
                      ),
                      Image.asset(
                        'assets/images/linkedin.png',
                        height: 49,
                        width: 49,
                      ),
                      Image.asset(
                        'assets/images/fb.png',
                        height: 49,
                        width: 49,
                      ),
                      Image.asset(
                        'assets/images/youtube.png',
                        height: 49,
                        width: 49,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Center(
                    child: Text(
                      'EE Limited is authorized and regulated by the Financial Conduct Authority for the provision of consumer credit.',
                      style: TextStyle(
                          fontSize: 14, color: Color(0xff6D6E71), height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                ],
              ),
            ),
            Container(
              height: 66,
              width: double.infinity,
              color: const Color(0xFF3C3D41),
              child: const Center(
                child: Text(
                  ' @2022 EE Limited ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
