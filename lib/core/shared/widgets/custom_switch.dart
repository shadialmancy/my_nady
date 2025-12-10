import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    this.activeColor = Colors.white,
    this.inactiveColor = Colors.white,
    this.activeTrackColor = Colors.green,
    this.inactiveTrackColor = Colors.grey,
    this.trackWidth,
    this.trackHeight,
    this.thumbRadius,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final bool value;
  final Function(bool) onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;
  final double? trackWidth;
  final double? trackHeight;
  final double? thumbRadius;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: widget.trackWidth ?? 60,
        height: widget.trackHeight ?? 28,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.value
              ? widget.activeTrackColor
              : widget.inactiveTrackColor,
        ),
        child: AnimatedAlign(
          alignment: widget.value
              ? Alignment.centerRight
              : Alignment.centerLeft,
          duration: Duration(milliseconds: 200),
          child: CircleAvatar(
            radius: widget.thumbRadius ?? 11,
            backgroundColor: widget.value
                ? widget.activeColor
                : widget.inactiveColor,
          ),
        ),
      ),
    );
  }
}
