import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 79),
        child: Text(
          'Daftar',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40,
              fontFamily: "Comfortaa",
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
    ]
    );
  }
}