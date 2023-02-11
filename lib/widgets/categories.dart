import 'package:flutter/material.dart';

import '../models/categories.dart';
import '../utils/constant.dart';

class CategoriesWidget extends StatelessWidget {
  Categories category;
  CategoriesWidget(this.category);

  Widget getCategory() {
    if (category.click == true) {
      return SelectedCat(category);
    } else if (category.click == false) {
      return UnSelectedCat(category);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: getCategory());
  }
}

class SelectedCat extends StatelessWidget {
  Categories category;
  SelectedCat(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(ColorConstants.GreenColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.centerLeft,
            color: Color(ColorConstants.GreenColor),
            width: 50,
            height: 3,
          )
        ],
      ),
    );
  }
}

class UnSelectedCat extends StatelessWidget {
  Categories category;
  UnSelectedCat(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            category.name,
            style: TextStyle(
              fontSize: 18,
              color: Color(ColorConstants.PrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
