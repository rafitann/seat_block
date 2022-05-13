import 'package:flutter/material.dart';

Widget SeatStates() => Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(start: 20.0),
                height: 10,
                width: 10,
                color: Colors.lightGreen,
              ),
              const Text(
                "Livre",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(start: 40.0),
                height: 10,
                width: 10,
                color: Colors.yellow,
              ),
              const Text(
                "Selecionado",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(start: 50.0),
                height: 10,
                width: 10,
                color: Colors.black54,
              ),
              const Text(
                "Ocupado",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
            ],
          ),
        )
      ],
    );
