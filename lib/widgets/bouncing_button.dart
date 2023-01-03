import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BouncingButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  const BouncingButton(
      {super.key, required this.child, required this.onPressed});
  @override
  State<BouncingButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton> {
  late double scale;

  @override
  void initState() {
    scale = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          scale = 0.9;
        });
      },
      onTapUp: (details) {
        setState(() {
          scale = 1;
        });
      },
      onTapCancel: () {
        setState(() {
          scale = 1;
        });
      },
      child: Transform.scale(
        scale: scale,
        child: CupertinoButton.filled(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 30,
          ),
          onPressed: () {
            widget.onPressed();
          },
          child: widget.child,
        ),
      ),
    );
  }
}
