import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  final Color color;
  final IconData icon;
  final IconData iconFill;
  const IconWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.iconFill,
  }) : super(key: key);

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  var isPressed = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: pressButton, icon: isTap(isPressed));
  }

  void pressButton() {
    if (isPressed) {
      isPressed = false;
      setState(() {});
    } else {
      isPressed = true;
      setState(() {});
    }
  }

  Icon isTap(bool isPressed) {
    if (isPressed) {
      return Icon(widget.iconFill, color: widget.color);
    } else {
      return Icon(widget.icon, color: Colors.white);
    }
  }
}
