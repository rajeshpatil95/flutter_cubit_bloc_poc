import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CallPlanScreen extends StatefulWidget {
  const CallPlanScreen({Key? key}) : super(key: key);

  @override
  State<CallPlanScreen> createState() => _CallPlanScreenState();
}

class _CallPlanScreenState extends State<CallPlanScreen> {
  CallPlanVM callPlanVM = CallPlanVM();
  int selectedExtraFeatureCard = -1;
  int selectedSuitablePageIndex = 0;
  bool isAnswerYesSelected = true;
  int? selectedNoCostAccessory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 80,
        title: Text(
          callPlanVM.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        iconTheme:
            IconTheme.of(context).copyWith(color: "#FFFFFF".hexToColor()),
        actions: [
          GestureDetector(
            onTap: () {
              //desired action command
            },
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/images/user.png'),
              ),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
              gradient: LinearGradient(
                  colors: ["#007B85".hexToColor(), "#007B85".hexToColor()],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            paddedWidget(
              childWidget: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 26.0),
                  Text(
                    "You’ll also get:",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: "#3C3D41".hexToColor(),
                        fontSize: 22),
                  ),
                  const SizedBox(height: 19.0),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: callPlanVM.features.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 2.5),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          // if you need this
                          side: BorderSide(
                            color: "#6D6E71".hexToColor(),
                            width: 1,
                          ),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              callPlanVM.features[index],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: "#6D6E71".hexToColor(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    callPlanVM.desc1,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.8,
                      color: "#6D6E71".hexToColor(),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    callPlanVM.desc2Title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: "#6D6E71".hexToColor(),
                    ),
                  ),
                  const SizedBox(height: 9.0),
                  Text(
                    callPlanVM.desc2,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.8,
                      color: "#6D6E71".hexToColor(),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      // if you need this
                      side: BorderSide(
                        color: "#6D6E71".hexToColor(),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 21.0, left: 21.0, right: 17.0, bottom: 31.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Customers with additional needs",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: "#6D6E71".hexToColor(),
                            ),
                          ),
                          Text(
                            "This service is not suitable if:\n"
                            "you have any additional needs (for\nexample physical, visual, hearing or cognitive)\n"
                            "You would like your bills in a\nparticular format\n"
                            "You might need help installing\nequipment."
                            "\nIf any of these apply to you, please"
                            "\ncall us on XXXX XXX XXXX and we'll\nhelp order the right services for you.",
                            style: TextStyle(
                              fontSize: 16.0,
                              height: 1.8,
                              color: "#6D6E71".hexToColor(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 27.0),
                  Text(
                    "Check if Digital Home Phone"
                    " is suitable for you.",
                    style: TextStyle(
                      fontSize: 20.0,
                      height: 1.6,
                      fontWeight: FontWeight.bold,
                      color: "#6D6E71".hexToColor(),
                    ),
                  ),
                  const SizedBox(height: 14.0),
                ],
              ),
            ),
            const SizedBox(height: 27.0),
            CarouselSlider(
                items: callPlanVM.suitabilityQuestions.map((value) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        shadowColor: "#6d6e714a".hexToColor(),
                        elevation: 6.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        color: "#3C3D41".hexToColor(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            bottom: 0.0,
                            left: 20.0,
                            right: 20.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                value,
                                style: TextStyle(
                                  color: "#FFFFFF".hexToColor(),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                value,
                                style: TextStyle(
                                  color: "#D8D8D9".hexToColor(),
                                  fontSize: 16.0,
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(height: 25),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Yes",
                                    style: TextStyle(
                                      color: isAnswerYesSelected
                                          ? "#FFFFFF".hexToColor()
                                          : "#D8D8D9".hexToColor(),
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  CupertinoSwitch(
                                    value: !isAnswerYesSelected,
                                    onChanged: (value) {
                                      setState(() {
                                        isAnswerYesSelected =
                                            !isAnswerYesSelected;
                                      });
                                    },
                                    activeColor: "#FFFFFF".hexToColor(),
                                    thumbColor: "#007B85".hexToColor(),
                                    trackColor: "#FFFFFF".hexToColor(),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "No",
                                    style: TextStyle(
                                      color: !isAnswerYesSelected
                                          ? "#FFFFFF".hexToColor()
                                          : "#D8D8D9".hexToColor(),
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 235,
                  viewportFraction: 0.86,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, value) {},
                  scrollDirection: Axis.horizontal,
                )),
            const SizedBox(height: 60.0),
            paddedWidget(
              childWidget: Text(
                "Choose one home phone accessory at no extra cost",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: "#6D6E71".hexToColor(),
                ),
              ),
            ),
            const SizedBox(height: 28.0),
            SizedBox(
              height: 290.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: callPlanVM.homeAccessories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: Card(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 5.0,
                          ),
                          shadowColor: selectedNoCostAccessory != null &&
                                  selectedNoCostAccessory == index
                              ? "#007B85".hexToColor()
                              : "#007B85".hexToColor(),
                          elevation: selectedNoCostAccessory != null &&
                                  selectedNoCostAccessory == index
                              ? 10.0
                              : 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            // if you need this
                            side: BorderSide(
                              color: selectedNoCostAccessory != null &&
                                      selectedNoCostAccessory == index
                                  ? "#007B85".hexToColor()
                                  : "#6D6E71".hexToColor(),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  callPlanVM.homeAccessories[index].image,
                                  height: 160,
                                ),
                                Text(
                                  "${callPlanVM.homeAccessories[index].amount.toInt()} upfront",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: "#6D6E71".hexToColor(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedNoCostAccessory = index;
                          });
                        },
                      ),
                      Flexible(
                        child: Text(
                          callPlanVM.homeAccessories[index].name,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: "#000000".hexToColor(),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30.0),
            paddedWidget(
              childWidget: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: "#007B85".hexToColor(),
                    fixedSize: Size(MediaQuery.of(context).size.width, 60.9),
                    elevation: 0.0,
                    //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                    padding:
                        const EdgeInsets.all(20) //content padding inside button
                    ),
                onPressed: () {
                  // TODO: move to next screen
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}

Widget paddedWidget({required Widget childWidget}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    child: childWidget,
  );
}

extension HexToColor on String {
  Color hexToColor() {
    return Color(
        int.parse(toLowerCase().substring(1, 7), radix: 16) + 0xFF000000);
  }
}

class CallPlanVM {
  int id = 0;
  String title = "700 minutes";
  List<String> features = [
    "Caller Display",
    "Voicemail Essential",
    "Call Protect",
    "Call Barring",
    "Call Diversion",
    "Call Waiting",
    "3 Way Calling",
    "Call Barring"
  ];
  String desc1 = "Calls to numbers starting with 084, 087, 09 and 118 "
      "are subject to extra charges. They have an access "
      "charge of 22.84p per minute set by us and"
      " a service charge set by the company you’re calling.";
  String desc2Title = "Digital Home Phone";
  String desc2 = "Your new phone service works through your "
      "broadband, so if there’s a power cut you won’t be "
      "able to make or receive calls. You should make sure "
      "you’ve got another way of making calls, such as a "
      "mobile phone.";
  List<String> suitabilityQuestions = [
    "Do you have any services connected\nto your landline?",
    "Do you have any services connected\nto your landline?"
  ];
  List<String> suitabilityAnswers = [
    "Some alarms or other services connected to your current landline might not work with Digital Home Phone technology.",
    "Some alarms or other services connected to your current landline might not work with Digital Home Phone technology."
  ];
  List<HomeAccessories> homeAccessories = [
    HomeAccessories("assets/images/accessory1.png", "Home Phone\nAdaptor", 0.0),
    HomeAccessories(
        "assets/images/accessory2.png", "Digital Home\nPhone Pro", 0.0),
    HomeAccessories("assets/images/accessory1.png", "Home Phone\nAdaptor", 0.0),
    HomeAccessories("assets/images/accessory2.png", "Home Phone\nAdaptor", 0.0)
  ];
}

class HomeAccessories {
  String image = "";
  String name = "";
  double amount = 0.0;

  HomeAccessories(this.image, this.name, this.amount);
}
