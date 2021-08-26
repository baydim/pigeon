import 'package:flutter/material.dart';
import 'package:pigeon1/widget/shadow.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChange;
  final double width;
  final double heigth;

  CustomSwitch({
    required this.value,
    required this.onChange,
    required this.width,
    required this.heigth,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.value == false ? widget.onChange(true) : widget.onChange(false);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(top: 1, bottom: 1),
        width: widget.width,
        height: widget.heigth,
        decoration: BoxDecoration(
            color: widget.value ? Colors.blue : Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(60),
            boxShadow: [
              boxShadow,
            ]),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 200),
          alignment:
              widget.value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: widget.heigth,
            height: widget.heigth,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
