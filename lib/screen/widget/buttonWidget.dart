import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  final String? title;
  final bool hasBorder;
  const buttonWidget({@required this.title, this.hasBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: hasBorder ? Colors.white : Colors.blue,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder
              ? Border.all(color: Colors.blue)
              : const Border.fromBorderSide(BorderSide.none)),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title!,
          style: TextStyle(color: hasBorder ? Colors.blue : Colors.white),
        ),
      ),
    );
  }
}
