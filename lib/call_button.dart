import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      child: IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.blue,
        ),
      ),
    );
  }
}
