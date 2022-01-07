import 'package:flutter/material.dart';
import 'package:teste_blu/pages.dart';
import 'package:teste_blu/app/custom/bottom_bar.dart';

import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var altura = MediaQuery.of(context).size.height;
    // var largura = MediaQuery.of(context).size.width;

    return Material(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: TextField(
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF707070),
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              labelText: "Seach Properties, Area, etc...",
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: SvgPicture.asset(
                                  "assets/icons/search.svg",
                                  color: Colors.black,
                                  width: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            "assets/icons/options.svg",
                            color: Colors.white,
                            cacheColorFilter: false,
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<CircleBorder>(
                              const CircleBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  const Expanded(
                    flex: 8,
                    child: Lista(),
                  ),
                ],
              ),
              Align(
                alignment: const Alignment(0, 0.92),
                child: bottomBar(),
              ),
            ],
          )),
    );
  }
}
