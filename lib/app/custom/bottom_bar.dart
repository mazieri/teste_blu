import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/svg.dart';

Widget bottomBar() {
  return ClipRRect(
    borderRadius: const BorderRadius.all(
      Radius.circular(12),
    ),
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: Container(
        width: 375,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF).withOpacity(0.70),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          key: const Key('linhaIcone'),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              key: const Key('iconeHome'),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: const Color(0xFF4668d9),
              ),
            ),
            IconButton(
              key: const Key('iconeBookmark'),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/bookmark.svg",
                color: const Color(0xFF919191),
              ),
            ),
            IconButton(
              key: const Key('iconeMsg'),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/msg.svg",
                color: const Color(0xFF919191),
              ),
            ),
            IconButton(
              key: const Key('iconeMore'),
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
