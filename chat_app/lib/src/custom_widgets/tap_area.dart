// ignore_for_file: no_logic_in_create_state

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TapArea extends StatefulWidget {
  const TapArea({
    super.key,
    required this.child,
    this.onTap,
    this.onLongTap,
    this.borderRadius = BorderRadius.zero,
    this.tapAreaStyle,
    this.backgroundColor,
    this.disable = false,
  });
  final Widget child;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onLongTap;
  final BorderRadius borderRadius;

  /// style for Tap area Web
  final TapAreaStyle? tapAreaStyle;
  final Color? backgroundColor;
  final bool disable;

  @override
  State<TapArea> createState() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return _TapAreaIosState();
      case TargetPlatform.android:
        return _TapAreaAndroidState();
      default:
        return _TapAreaWebState();
    }
  }
}

class _TapAreaIosState extends State<TapArea> {
  bool _isDown = false;
  @override
  Widget build(BuildContext context) {
    if (widget.disable) return widget.child;
    if (widget.onTap == null && widget.onLongTap == null) return widget.child;
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _isDown = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isDown = false;
        });
      },
      onTap: () {
        setState(() {
          _isDown = false;
        });
        widget.onTap?.call();
      },
      onLongPress: widget.onLongTap,
      child: Focus(
        child: Opacity(
          opacity: _isDown ? 0.7 : 1.0,
          child: widget.child,
        ),
      ),
    );
  }
}

class _TapAreaAndroidState extends State<TapArea> {
  @override
  Widget build(BuildContext context) {
    if (widget.disable) return widget.child;
    if (widget.onTap == null && widget.onLongTap == null) return widget.child;
    return Material(
      color: widget.backgroundColor,
      clipBehavior: Clip.none,
      borderRadius: widget.borderRadius,
      child: InkWell(
        borderRadius: widget.borderRadius,
        onTap: widget.onTap,
        onLongPress: widget.onLongTap,
        child: widget.child,
      ),
    );
  }
}

class _TapAreaWebState extends State<TapArea> {
  final _statesController = MaterialStatesController();
  @override
  Widget build(BuildContext context) {
    if (widget.disable) return widget.child;
    if (widget.onTap == null && widget.onLongTap == null) return widget.child;

    return ListenableBuilder(
      listenable: _statesController,
      builder: (context, _) {
        final resolvedOpacity =
            widget.tapAreaStyle?.opacity.resolve(_statesController.value) ?? 1.0;
        final resolvedHighlightOpacity =
            widget.tapAreaStyle?.foregroundHighlight.resolve(_statesController.value) ?? 1.0;
        return MouseRegion(
          onEnter: (event) {
            _statesController.update(MaterialState.hovered, true);
          },
          onExit: (event) {
            _statesController.update(MaterialState.hovered, false);
          },
          child: GestureDetector(
            onTapDown: (details) {
              _statesController.update(MaterialState.pressed, true);
            },
            onTapCancel: () {
              _statesController.update(MaterialState.pressed, false);
            },
            onTap: () {
              _statesController.update(MaterialState.pressed, false);
              widget.onTap?.call();
            },
            onLongPress: widget.onLongTap,
            child: Focus(
              child: ColoredBox(
                color: (widget.backgroundColor ?? Colors.transparent)
                    .withOpacity(resolvedHighlightOpacity),
                child: Opacity(
                  opacity: resolvedOpacity,
                  child: widget.child,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TapAreaStyle {
  final MaterialStateProperty<double?> opacity;
  final MaterialStateProperty<double?> foregroundHighlight;

  TapAreaStyle({
    required this.opacity,
    required this.foregroundHighlight,
  });
}
