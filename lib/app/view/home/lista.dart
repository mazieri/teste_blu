import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  var _corBookmark = "assets/icons/bookmark_on.svg";

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      padding: const EdgeInsets.all(0),
      separatorBuilder: (context, index) => Divider(
        color: Colors.white.withOpacity(0),
      ),
      itemBuilder: (context, index) {
        return Container(
          height: 275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/img/${index < 3 ? index + 1 : index > 3 ? index - 2 : 1}.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [],
                          ),
                          Row(
                            children: [],
                          ),
                          Row(
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: const Alignment(1, 0.15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/icons/navigation.svg",
                    color: const Color(0xFF4668d9),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<CircleBorder>(
                      const CircleBorder(),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.925, -0.9),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _corBookmark =
                          _corBookmark == "assets/icons/bookmark_on.svg"
                              ? "assets/icons/bookmark_off.svg"
                              : "assets/icons/bookmark_on.svg";
                    });
                  },
                  child: SvgPicture.asset(
                    index % 2 == 0
                        ? _corBookmark
                        : _corBookmark == "assets/icons/bookmark_on.svg"
                            ? "assets/icons/bookmark_off.svg"
                            : "assets/icons/bookmark_on.svg",
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// index < 3 ? index + 1 : index > 3 ? index - 2 : 1