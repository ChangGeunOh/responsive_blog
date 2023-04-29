import 'package:flutter/material.dart';

import '../../../../common/const/theme.dart';


class WebMenuItem extends StatefulWidget {
  final bool isActive;
  final String text;
  final VoidCallback onTap;

  const WebMenuItem({
    required this.isActive,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;
  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if(_isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: _borderColor(),
                  width: 3,
                ))),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : null,
          ),
        ),
      ),
    );
  }
}
