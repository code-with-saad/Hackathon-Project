import 'package:flutter/material.dart';
import '../utils/constant.dart';
import 'package:flutter/cupertino.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageContants.logo,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              StringConstants.appName.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: FontsConstants.Bold,
                color: Color(ColorConstants.PrimaryColor),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.3),
          // Badge(
          //   backgroundColor: Color(ColorConstants.GreenColor),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Icon(
          //       Icons.notification_add_outlined,
          //       size: 28,
          //       color: Color(ColorConstants.PrimaryColor),
          //     ),
          //   ),
          // ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Image.asset(
              ImageContants.sideMenuIcon,
              height: 28,
              width: 17,
              color: Color(ColorConstants.PrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class HomeAppBar2 extends StatelessWidget {
  const HomeAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageContants.logo,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              StringConstants.appName.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: FontsConstants.Bold,
                color: Color(ColorConstants.PrimaryColor),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.3),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.search_outlined,
              size: 28,
              color: Color(ColorConstants.PrimaryColor),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Image.asset(
              ImageContants.sideMenuIcon,
              height: 28,
              width: 17,
              color: Color(ColorConstants.PrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}
