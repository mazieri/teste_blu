import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 13,
      padding: const EdgeInsets.all(0),
      separatorBuilder: (context, index) => Divider(
        color: Colors.white.withOpacity(0),
      ),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 275,
          child: Image.asset(
            "assets/img/3.jpg",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
