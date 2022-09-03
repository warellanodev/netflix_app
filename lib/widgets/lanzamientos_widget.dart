import 'package:flutter/material.dart';

import '../json/home_json.dart';

class LanzamientosWidget extends StatelessWidget {
  const LanzamientosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: const Text(
            "Lanzamientos del último año",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: List.generate(lanzamientos.length, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 110,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: AssetImage(lanzamientos[index]['img']),
                          fit: BoxFit.cover)),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
