import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonCat extends StatelessWidget {
  final String label;
  String active;
  final bool acivebutton;
  Function(bool) setState;

  ButtonCat(
      {required this.label,
      required this.active,
      required this.acivebutton,
      required this.setState});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(acivebutton);
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.2,
        decoration: BoxDecoration(
          color: active == acivebutton ? Colors.blueAccent : Colors.white,
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              label,
              style:
                  TextStyle(color: active == 1 ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
