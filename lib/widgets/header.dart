import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      width: MediaQuery.of(context).size.width - 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              '홈',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '회원가입',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
