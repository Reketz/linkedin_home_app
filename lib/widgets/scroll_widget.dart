import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollWidget extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;
  final Duration duration;

  const ScrollWidget(
      {Key? key,
      required this.child,
      required this.scrollController,
      this.duration = const Duration(milliseconds: 200)})
      : super(key: key);

  @override
  _ScrollWidgetState createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  bool isVisable = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(listen);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(listen);
    super.dispose();
  }

  listen() {
    final userScrollDirection =
        widget.scrollController.position.userScrollDirection;
    if (userScrollDirection == ScrollDirection.forward) {
      if (!isVisable) {
        setState(() {
          isVisable = true;
        });
      }
    } else if (userScrollDirection == ScrollDirection.reverse) {
      if (isVisable) {
        setState(() {
          isVisable = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisable ? 62 : 0,
      child: Wrap(children: [widget.child]),
    );
  }
}
