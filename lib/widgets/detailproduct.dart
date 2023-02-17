import 'package:flutter/material.dart';
import '../utils/constant.dart';

class detailPage_Function {
  static AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.app_light_blue_Color,
      elevation: 0,
      leading: InkWell(
        child: Image(
          image: AssetImage("assets/images/detailProduct logo.png"),
        ),
      ),
      title: Text(
        'PLANTIFY',
        style: TextStyle(
            fontFamily: 'Philosopher',
            letterSpacing: 4,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.app_black_Color),
      ),
      actions: [
        InkWell(
          onTap: (() {}),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        InkWell(
          child: Image(
            image: AssetImage('assets/images/detailProduct filter.png'),
          ),
        ),
      ],
    );
  }
}
