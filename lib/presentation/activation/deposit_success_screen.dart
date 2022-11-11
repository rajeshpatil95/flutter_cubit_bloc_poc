import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/call_plan_screen.dart';

class DepositSuccessfulScreen extends StatefulWidget {
  const DepositSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<DepositSuccessfulScreen> createState() =>
      _DepositSuccessfulScreenState();
}

class _DepositSuccessfulScreenState extends State<DepositSuccessfulScreen> {
  OrderDetailVM orderDetailVM = OrderDetailVM(
    0,
    "ABC0000000",
    "email@example.com",
    "paid",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#007B85".hexToColor(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        centerTitle: true,
        title: const Image(image: AssetImage("assets/images/app_icon.png")),
        iconTheme:
            IconTheme.of(context).copyWith(color: "#FFFFFF".hexToColor()),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
                bottom: 24.0,
              ),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: "#FFFFFF".hexToColor(),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: "#168104".hexToColor())),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/check.png"),
                    height: 40.0,
                    width: 40.0,
                  ),
                  Text(
                    "Deposit paid",
                    style: TextStyle(
                      color: "#168104".hexToColor(),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      height: 2.0,
                    ),
                  )
                ],
              ),
            ),
            const Image(
              image: AssetImage("assets/images/info.png"),
            ),
            Text(
              "Order Number",
              style: TextStyle(
                color: "#FFFFFF".hexToColor(),
                fontSize: 18.0,
                height: 2.0,
              ),
            ),
            Text(
              orderDetailVM.orderNumber,
              style: TextStyle(
                  color: "#FFFFFF".hexToColor(),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            const SizedBox(height: 32.0),
            Text(
              "A confirmation email has just been sent to",
              style: TextStyle(
                color: "#FFFFFF".hexToColor(),
                fontSize: 16.0,
                height: 2.0,
              ),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/email.png"),
                ),
                const SizedBox(width: 10.0),
                Text(
                  orderDetailVM.email,
                  style: TextStyle(
                    color: "#FFFFFF".hexToColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 49.0),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20.0),
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login to verify your email",
                    style: TextStyle(
                      color: "#3C3D41".hexToColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      height: 2.0,
                    ),
                  ),
                  const SizedBox(height: 23.0),
                  Text(
                    "To finish setting up your account,\nyou’ll need to log in.",
                    style: TextStyle(
                      color: "#3C3D41".hexToColor(),
                      fontSize: 16.0,
                      height: 1.8,
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  Text(
                    "Once logged in you’ll be able to:"
                    "\n•   Track your order\n•    Manage your bills"
                    "\n•   Set up parental controls and more",
                    style: TextStyle(
                      color: "#6D6E71".hexToColor(),
                      fontSize: 16.0,
                      height: 1.8,
                    ),
                  ),
                  const SizedBox(height: 33.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: "#6D6E71".hexToColor(),
                          fontSize: 16,
                          height: 1.6,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'If you don’t log in within the next week, you’ll need to  ',
                            style: TextStyle(
                              color: "#6D6E71".hexToColor(),
                            ),
                          ),
                          TextSpan(
                            text: 'create a new EE ID ',
                            style: TextStyle(
                                color: "#007B85".hexToColor(),
                                decoration: TextDecoration.underline),
                          ),
                          const TextSpan(
                            text: 'to access your account.',
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 33.0),
                  ElevatedButton(
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
                    },
                    child: Text(
                      "Verify your email",
                      style: TextStyle(
                          color: "#FFFFFF".hexToColor(),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
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
}

class OrderDetailVM {
  int orderId;
  String orderNumber;
  String email;
  String paymentStatus;

  OrderDetailVM(this.orderId, this.orderNumber, this.email, this.paymentStatus);
}
