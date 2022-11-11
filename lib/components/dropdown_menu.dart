import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  final double? radiusBorder;
  final double? height;
  final double? width;
  final List<String>? dropDownItems;
  const DropDownMenu(
      {Key? key,
      this.height,
      this.width,
      this.radiusBorder,
      this.dropDownItems})
      : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String dropdownvalue;

  @override
  void initState() {
    super.initState();
    dropdownvalue = widget.dropDownItems!.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: widget.width!,
              height: widget.height!,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(widget.radiusBorder!),
                border: Border.all(
                    color: Colors.grey, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    iconSize: 40,
                    elevation: 0,
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_up),
                    items: widget.dropDownItems!.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
