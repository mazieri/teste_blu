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
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/selected");
          },
          child: Container(
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
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
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
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Studio Apartament",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "23 Cross, Hrbr Layout, Bangalore",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/bed.svg",
                                    color: const Color(0xFF4668d9),
                                  ),
                                  Text(
                                    "3 Bed",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/bath.svg",
                                    color: const Color(0xFF4668d9),
                                  ),
                                  Text(
                                    "2 Bath",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/car.svg",
                                    color: const Color(0xFF4668d9),
                                  ),
                                  Text(
                                    "2 Parking",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                Align(
                  alignment: const Alignment(-0.95, -0.925),
                  child: SizedBox(
                    width: 160,
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Text(
                              "Furnitured",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Text(
                              "Pet Friendly",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
