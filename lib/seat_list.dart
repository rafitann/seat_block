import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapSeat {
  int? x;
  int? y;
  int? z;
  bool? available;
  String? label;

  MapSeat(this.x, this.y, this.z, this.available, this.label);
}

List<MapSeat>? seats = <MapSeat>[
  MapSeat(0, 0, 0, true, "0"),
  MapSeat(0, 1, 0, true, "1"),
  MapSeat(0, 4, 0, true, "2"),
  MapSeat(1, 0, 0, true, "3"),
  MapSeat(1, 1, 0, true, "4"),
  MapSeat(1, 4, 0, true, "5"),
];

Widget SeatsList() => GridView.builder(
    itemCount: seats!.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
    ),
    itemBuilder: (BuildContext context, int index) {
      if(seats!.contains(index)) { //Pegar o x de todos do MapSeat e deixe Rosa
        return Container(
          decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          width: 50,
          height: 50,
          child: Text(index.toString()),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              width: 50,
              height: 50,
              child: Text(index.toString()), // for para mostrar o seats
            ),
          ),
        );
      }
    });
