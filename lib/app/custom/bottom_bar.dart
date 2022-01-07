import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/svg.dart';

Widget bottomBar() {
  return ClipRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: Container(
        width: 375,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF).withOpacity(0.75),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: const Color(0xFF4668d9),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/bookmark.svg",
                color: const Color(0xFF919191),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/msg.svg",
                color: const Color(0xFF919191),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/more.svg",
                color: const Color(0xFF919191),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
