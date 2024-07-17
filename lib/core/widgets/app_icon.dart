// ignore_for_file: constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AppIcons {
  home,
  bag,
  chart,
  edit,
  ranking,
  setting,
  star_fill,
  star,
  trash,
  box,
  notification,
  like_shapes,
  arrow_up,
  shopping,
  arrowUp,
  list,
  camera
}

class AppIcon extends StatelessWidget {
  final AppIcons icon;
  final double? size;
  final Color? color;
  final bool changeableColorAccordingToTheme;

  const AppIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.changeableColorAccordingToTheme = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: SvgPicture.asset(
        'assets/svgs/${icon.name}.svg',
        color: changeableColorAccordingToTheme
            ? Theme.of(context).colorScheme.onBackground
            : color,
        height: size,
        width: size,
      ),
    );
  }
}