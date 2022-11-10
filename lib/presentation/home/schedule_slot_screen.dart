import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/call_plan_screen.dart';
import 'package:flutter_cubit_bloc_poc/utils/strings.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ScheduleSlotScreen extends StatefulWidget {
  const ScheduleSlotScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleSlotScreen> createState() => _ScheduleSlotScreenState();
}

class _ScheduleSlotScreenState extends State<ScheduleSlotScreen> {
  int selectedTime = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 80,
          title: const Text(
            "Broadband installation slot",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Pick a slot",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: "#3C3D41".hexToColor(),
                    fontSize: 22,
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                margin: const EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // if you need this
                  side: BorderSide(
                    color: "#007B85".hexToColor(),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SfDateRangePicker(
                    selectionColor: "#009C9C".hexToColor(),
                    headerStyle: DateRangePickerHeaderStyle(
                      textStyle: TextStyle(
                        color: "#3C3D41".hexToColor(),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    monthViewSettings: DateRangePickerMonthViewSettings(
                      dayFormat: "EEE",
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: TextStyle(
                          color: "#3C3D41".hexToColor(),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    initialSelectedDate: DateTime.now(),
                    onSelectionChanged: _onSelectionChanged,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customRadioButton("8 am - 1 pm", 0),
                  customRadioButton("1 pm - 6 pm", 1),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "What happens next?",
                  style: TextStyle(
                      color: "#007B85".hexToColor(),
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Notes for the engineer (Optional)",
                  style: TextStyle(
                    color: "#6D6E71".hexToColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "If there's anything you want to tell the engineer.",
                  style: TextStyle(
                    color: "#6D6E71".hexToColor(),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "For eg.  Directions to your property if it's difficult to find, enter it here.",
                  style: TextStyle(
                    color: "#D8D8D9".hexToColor(),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Installation service terms",
                    style: TextStyle(
                      color: "#007B85".hexToColor(),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: "#FFE600".hexToColor(),
                      fixedSize: Size(MediaQuery.of(context).size.width, 60.9),
                      elevation: 0.0,
                      //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(
                          20) //content padding inside button
                      ),
                  onPressed: () {
                    Navigator.pushNamed(context, ACTIVATION_ROUTE);
                  },
                  child: Text(
                    "Reserve and Continue",
                    style: TextStyle(
                      color: "#3C3D41".hexToColor(),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 84,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: "#3C3D41".hexToColor(),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(26),
              topRight: Radius.circular(26),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "£XX.xx",
                    style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    "monthly",
                    style: TextStyle(
                      color: "#D8D8D9".hexToColor(),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "£XX.xx",
                    style: TextStyle(
                      color: "#FFFFFF".hexToColor(),
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    "monthly",
                    style: TextStyle(
                      color: "#D8D8D9".hexToColor(),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is DateTime) {
      final DateTime selectedDate = args.value;
    }
  }

  Widget customRadioButton(String text, int index) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: (selectedTime == index)
              ? "#007B85".hexToColor()
              : "#FFFFFF".hexToColor(),
          fixedSize: Size(MediaQuery.of(context).size.width / 2.5, 60.9),
          elevation: 0.0,
          //elevation of button
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                  color: (selectedTime == index)
                      ? "#009C9C".hexToColor()
                      : "#6D6E71".hexToColor())),
          padding: const EdgeInsets.all(20)),
      onPressed: () {
        setState(() {
          selectedTime = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: (selectedTime == index)
              ? "#FFFFFF".hexToColor()
              : "#3C3D41".hexToColor(),
        ),
      ),
    );
  }
}
