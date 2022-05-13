import 'package:flutter/cupertino.dart';

Widget FrontBus() => Row(
      children: [
        Container(
          height: 50,
          width: 50,
          child: Image.network(
            'https://cdn-icons.flaticon.com/png/512/1723/premium/1723544.png?token=exp=1652201259~hmac=74c36a47ab869d8b7824e3f8bbacdeeb',
            height: 30,
            width: 30,
          ),
        )
      ],
    );
