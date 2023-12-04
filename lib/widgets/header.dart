import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Home',
            style: TextStyle(color: Colors.blue),
          ),
          Row(
            children: [
              Text(
                'Sign In',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
