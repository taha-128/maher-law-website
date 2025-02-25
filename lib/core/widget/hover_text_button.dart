import 'package:flutter/material.dart';

class HoverTextButton extends StatefulWidget {
  const HoverTextButton({
    super.key,
    this.onPressed,
    this.inactiveColor,
    required this.text,
    required this.activeColor,
    required this.style,
  });

  final GestureTapCallback? onPressed;
  final String text;
  final Color activeColor;
  final TextStyle style;
  final Color? inactiveColor;

  @override
  State<HoverTextButton> createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: widget.onPressed,
          onHover: (value) {
            setState(() {
              isActive = value;
            });
          },
          child: Text(
            widget.text,
            style: widget.style.copyWith(
              color: isActive ? widget.activeColor : widget.inactiveColor,
            ),
          ),
        ),
        AnimatedContainer(
          width: isActive ? 30 : 0,
          height: 3,
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: isActive ? widget.activeColor : widget.inactiveColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
