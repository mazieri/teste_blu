import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter_svg/svg.dart';
// import 'package:flutter/services.dart';

class SelectedPage extends StatelessWidget {
  const SelectedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.light,
    // ));

    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(0.9, 0),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/img/1.jpg",
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: SizedBox(),
                        ),
                        SizedBox(
                          height: 125,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "\$ 23,456",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Studio Apartament",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.85),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "23 Cross, Hrbr Layout, Bangalore",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.85),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/bed.svg",
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "3 Bed",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.85),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/bath.svg",
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "2 Bath",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.85),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/car.svg",
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "2 Parking",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.85),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SingleChildScrollView(
                            key: const Key("galeria"),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 115,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/5.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 115,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/6.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 115,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/7.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 115,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/4.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Features",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2 Movie Theatre",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "2Km",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "4 Shopping Mall",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "1.3Km",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2 Top School 1 International School",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "5Km",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2 Gov University",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "10Km",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Descriptions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(1, -0.3),
            child: ElevatedButton(
              key: const Key("mapa"),
              onPressed: () {},
              child: SvgPicture.asset(
                "assets/icons/navigation.svg",
                color: const Color(0xFF4668d9),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.90, -0.875),
            child: GestureDetector(
              key: const Key("iconeFav"),
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icons/bookmark_on.svg",
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.95, -0.9),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.875),
            child: ElevatedButton(
              key: const Key("check"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF07a581),
                ),
              ),
              child: const SizedBox(
                width: 325,
                height: 50,
                child: Center(
                  child: Text(
                    "Check Availability",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
