import 'dart:math' as math;
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/home/drawer_page.dart';
import 'package:zikirdua/home/home_screen.dart';
import 'package:zikirdua/widgets/my_text_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.maxSlide});

  final double maxSlide;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  void toggle() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  late bool _canBeDragged;

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController.isDismissed;
    bool isDragCloseFromRight = _animationController.isCompleted;
    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / widget.maxSlide;
      _animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    double kMinFlingVelocity = 365.0;

    if (_animationController.isDismissed || _animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      _animationController.fling(velocity: visualVelocity);
    } else if (_animationController.value < 0.5) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  Future<bool> _onWillPop() async {
    return (await (showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text(textAppExit),
        actions: [
          MyTextButton(onPressed: () => exit(0), child: const Text(textAppYes)),
          MyTextButton(onPressed: () => context.navigation.pop(), child: const Text(textAppNo)),
        ],
      ),
    ) as FutureOr<bool>?)) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: GestureDetector(
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        behavior: HitTestBehavior.translucent,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Material(
              color: Theme.of(context).colorScheme.onBackground,
              child: SafeArea(
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: Offset(
                          widget.maxSlide * (_animationController.value - 1),
                          0),
                      child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(
                              math.pi / 2 * (1 - _animationController.value)),
                        alignment: Alignment.centerRight,
                        child: const DrawerPage(),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(
                          widget.maxSlide * _animationController.value, 0),
                      child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(-math.pi / 2 * _animationController.value),
                        alignment: Alignment.centerLeft,
                        child: const HomeScreen(),
                      ),
                    ),
                    Positioned(
                      top: resp.hp(6),
                      left: resp.width * 0.01 +
                          _animationController.value * widget.maxSlide,
                      child: IconButton(
                        icon: Icon(
                            Icons.menu,
                            size: iconSmall),
                        onPressed: toggle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
