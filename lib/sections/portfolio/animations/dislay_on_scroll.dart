import 'package:flutter/material.dart';
import 'package:mysite/sections/animations/entrance_fader.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ScrollEntrance extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const ScrollEntrance({
    Key? key,
    required this.child,
    this.delay = Duration.zero,
  }) : super(key: key);

  @override
  State<ScrollEntrance> createState() => _ScrollEntranceState();
}

class _ScrollEntranceState extends State<ScrollEntrance> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.hashCode.toString()),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: _visible
          ? EntranceFader(
              delay: widget.delay,
              child: widget.child,
            )
          : Opacity(
              opacity: 0,
              child: widget.child,
            ),
    );
  }
}
