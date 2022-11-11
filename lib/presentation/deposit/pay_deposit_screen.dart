import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/call_plan_screen.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';

class PayDepositScreen extends StatefulWidget {
  const PayDepositScreen({Key? key}) : super(key: key);

  @override
  State<PayDepositScreen> createState() => _PayDepositScreenState();
}

class _PayDepositScreenState extends State<PayDepositScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#007B85".hexToColor(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 80,
        title: const Text(
          "Pay Deposit",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        iconTheme:
            IconTheme.of(context).copyWith(color: "#FFFFFF".hexToColor()),
        toolbarTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: "#FFFFFF".hexToColor(),
        ),
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Total to pay today:",
                    style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "£XX.xx",
                    style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 30.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Image(
                      image: AssetImage("assets/images/icon_question.png"),
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                  Text(
                    "Why do I need to pay this?",
                    style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(46),
                  topRight: Radius.circular(46),
                ),
                color: "#FFFFFF".hexToColor(),
                boxShadow: [
                  BoxShadow(
                    color: "#005A62".hexToColor(),
                    spreadRadius: 0,
                    blurRadius: 30,
                    offset: const Offset(0, -15),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 27.0),
                    child: Text(
                      "Card number",
                      style: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 21.0, right: 21.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: "#3C3D41".hexToColor(),
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              fillColor: "#F7F7F7".hexToColor(),
                              filled: true,
                              border: buildOutlineInputBorder(),
                              enabledBorder: buildOutlineInputBorder(),
                              focusedBorder: buildOutlineInputBorder(),
                              hintText: "1234  5678  9876  5461",
                              hintStyle: TextStyle(
                                color: "#6D6E71".hexToColor(),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        const Image(
                          image: AssetImage("assets/images/master.png"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 27.0),
                    child: Text(
                      "Expiry date",
                      style: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 6.0, left: 21.0, right: 21.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 67,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: "#3C3D41".hexToColor(),
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              fillColor: "#F7F7F7".hexToColor(),
                              filled: true,
                              border: buildOutlineInputBorder(),
                              enabledBorder: buildOutlineInputBorder(),
                              focusedBorder: buildOutlineInputBorder(),
                              hintText: "MM",
                              hintStyle: TextStyle(
                                color: "#D8D8D9".hexToColor(),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        SizedBox(
                          width: 67,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: "#3C3D41".hexToColor(),
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              fillColor: "#F7F7F7".hexToColor(),
                              filled: true,
                              border: buildOutlineInputBorder(),
                              enabledBorder: buildOutlineInputBorder(),
                              focusedBorder: buildOutlineInputBorder(),
                              hintText: "YY",
                              hintStyle: TextStyle(
                                color: "#D8D8D9".hexToColor(),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 27.0),
                    child: Text(
                      "Name on card",
                      style: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                      left: 27.0,
                      right: 27.0,
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18.0,
                      ),
                      decoration: InputDecoration(
                        fillColor: "#F7F7F7".hexToColor(),
                        filled: true,
                        border: buildOutlineInputBorder(),
                        enabledBorder: buildOutlineInputBorder(),
                        focusedBorder: buildOutlineInputBorder(),
                        hintText: "John Doe",
                        hintStyle: TextStyle(
                          color: "#D8D8D9".hexToColor(),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 27.0),
                    child: Text(
                      "Card security code",
                      style: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 6.0, left: 21.0, right: 21.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 84,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: "#3C3D41".hexToColor(),
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              fillColor: "#F7F7F7".hexToColor(),
                              filled: true,
                              border: buildOutlineInputBorder(),
                              enabledBorder: buildOutlineInputBorder(),
                              focusedBorder: buildOutlineInputBorder(),
                              hintText: "XXX",
                              hintStyle: TextStyle(
                                color: "#D8D8D9".hexToColor(),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        const Image(
                          image: AssetImage("assets/images/card_back.png"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                    child: Text(
                      "Last 3 digits on the back of your card",
                      style: TextStyle(
                        color: "#6D6E71".hexToColor(),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: "#007B85".hexToColor(),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 60.9),
                          elevation: 0.0,
                          //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.all(
                              20) //content padding inside button
                          ),
                      onPressed: () {
                        // TODO: move to next screen
                        Navigator.pushNamed(context, DEPOSIT_SUCCESS_ROUTE);
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: "#FFFFFF".hexToColor(),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(16.0),
      ),
      borderSide: BorderSide(
        color: "#D8D8D9".hexToColor(),
        width: 1,
      ),
    );
  }
}
