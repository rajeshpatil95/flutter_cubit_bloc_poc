import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_poc/components/background_image.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_appbar.dart';
import 'package:flutter_cubit_bloc_poc/components/custom_drawer.dart';
import 'package:flutter_cubit_bloc_poc/components/primary_button.dart';
import 'package:flutter_cubit_bloc_poc/style/app_colors.dart';
import 'package:flutter_cubit_bloc_poc/style/font.dart';
import 'package:flutter_cubit_bloc_poc/navigation/route_constants.dart';

import '../../components/dropdown_menu.dart';
import '../../cubit/address/address_cubit.dart';
import '../../language/language_constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController textPasscodeController = TextEditingController();
  List<String> dropDownItems = ['Pick your address'];
  String addressSelected = 'Pick your address';
  bool isDeviceConnected = false;
  bool isAlertSet = false;
  late StreamSubscription? connectivitySubscription;

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$value',
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.size14,
                color: AppColors.white)),
      ),
    );
  }

  listenForConnectivity() {
    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult nowresult) async {
      if (nowresult == ConnectivityResult.none) {
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox();
          setState(() => isAlertSet = true);
        }
      } else {
        if (isAlertSet) {
          Navigator.of(context).pop();
          setState(() => isAlertSet = false);
        }
      }
    });
  }

  showDialogBox() => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('No Connection'),
          content: const Text('Please check your internet connectivity'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected = await checkConnection();
                if (!isDeviceConnected && isAlertSet == false) {
                  showDialogBox();
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );

  Future<bool> checkConnection() async {
    bool hasConnection = isDeviceConnected;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    return hasConnection;
  }

  @override
  void initState() {
    super.initState();
    listenForConnectivity();
  }

  @override
  void dispose() {
    connectivitySubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddressCubit, AddressState>(
      listenWhen: (previous, current) => true,
      listener: (BuildContext context, AddressState state) {
        if (state is AddressLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return const Dialog(
                backgroundColor: Colors.transparent,
                child: Center(
                    child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                )),
              );
            },
          );
        }
        if (state is AddressLoaded) {
          Navigator.of(context).pop();
          final geographicSubAddress =
              state.addressList!.first.geographicSubAddress!.first;
          String? address =
              '${geographicSubAddress.buildingName!} ${geographicSubAddress.subBuilding!} ${geographicSubAddress.subLocality!}, ${geographicSubAddress.subStreet!}';
          dropDownItems.removeWhere((item) => item != 'Pick your address');
          setState(() {
            dropDownItems.add(address + ' A');
            dropDownItems.add(address + ' B');
            dropDownItems.add(address + ' C');
            dropDownItems.add(address + ' D');
          });
        }
        if (state is AddressFailure) {
          Navigator.of(context).pop();
          showInSnackBar('Something went wrong, please try again later');
        }
      },
      buildWhen: (previous, current) => true,
      builder: (BuildContext context, AddressState state) {
        return Stack(
          children: [
            const BackGroundImage(),
            Scaffold(
              key: _scaffoldKey,
              backgroundColor: Colors.transparent,
              drawer: const CustomDrawer(),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 20.67,
                        ),
                        child: CustomAppBar(
                          scaffoldKey: _scaffoldKey,
                        ),
                      ),
                      const SizedBox(height: 43),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 32,
                          right: 31,
                        ),
                        child: Text(
                          translation(context).broadBandThatCanHandleAnything,
                          style: const TextStyle(
                            color: Color(0xffF3F3F3),
                            fontSize: 38,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                          right: 5,
                        ),
                        child: Image.asset(
                          'assets/images/bb_hero.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 21,
                          top: 24,
                        ),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Enter your postcode',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: AppFont.rubrikMedium,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              keyboardType: TextInputType.text,
                              // inputFormatters: <TextInputFormatter>[
                              //   FilteringTextInputFormatter.allow(
                              //     // RegExp(r'^\d+(?:\.\d+)?$'),
                              //     RegExp(
                              //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>'),
                              //   ),
                              // ],
                              maxLength: 7,
                              controller: textPasscodeController,
                              decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                      color: AppColors.greyWhite),
                                  hintText: 'Hint: SE3 7PQ',
                                  fillColor: Colors.white),
                              onEditingComplete: () {
                                if (textPasscodeController.text.isNotEmpty) {
                                  BlocProvider.of<AddressCubit>(context)
                                      .fetchAddress();
                                }
                                FocusScope.of(context).unfocus();
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 21, right: 21),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Select your address',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              fontFamily: AppFont.rubrikMedium,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12.5),
                      FittedBox(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 21, right: 20),
                        child: DropDownMenu(
                          width: 360,
                          height: 60,
                          radiusBorder: 16,
                          dropDownItems: dropDownItems,
                          onSelected: (value) {
                            setState(() {
                              addressSelected = value;
                            });
                          },
                        ),
                      )),
                      const SizedBox(height: 19),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 21,
                        ),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Want to keep your phone number',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: AppFont.rubrikMedium,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '(Optional)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: AppFont.rubrikMedium,
                                ),
                              ),
                            ),
                            const SizedBox(height: 14),
                            TextField(
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                    color: AppColors.greyWhite,
                                  ),
                                  hintMaxLines: 1,
                                  hintText:
                                      'Enter your phone number if you have one',
                                  fillColor: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 21,
                          bottom: 90,
                          right: 20,
                          left: 21,
                        ),
                        child: PrimaryButton(
                          text: 'Discover what you can get',
                          onPressed: () {
                            if (textPasscodeController.text.isNotEmpty &&
                                (addressSelected != 'Pick your address')) {
                              Navigator.pushNamed(context, HOME_ROUTE);
                            } else {
                              showInSnackBar(
                                  'Please check for valid postcode or address');
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
