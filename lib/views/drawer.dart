import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/constant.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.app_Green_Color,
        ),
        drawer: Drawer(
          backgroundColor: AppColors.app_Green_Color,
          child: ListView(
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            children: [
              ListTile(
                leading: Image(
                    image: AssetImage('assets/images/drawer shop icon.png')),
                title: Center(
                    child: const Text(
                  'Shop',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image(
                    image: AssetImage('assets/images/DRAWER PLANT CARE.png')),
                title: Center(
                    child: const Text(
                  'Plant Care',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                )),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image(
                    image: AssetImage('assets/images/drawer community.png')),
                title: Center(
                    child: const Text(
                  'Community',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image(
                    image: AssetImage('assets/images/drawer account.png')),
                title: Center(
                    child: const Text(
                  'My Account',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading:
                    Image(image: AssetImage('assets/images/drawer truck.png')),
                title: Center(
                    child: const Text(
                  'Track Order',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ListTile(
                title: Center(
                    child: const Text(
                  'Get the dirt',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide:
                        BorderSide(width: 2, color: AppColors.app_white_Color),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.app_white_Color,
                    ),
                  ),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: AppColors.app_white_Color),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text(
                  'FAQ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text(
                  'About US',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ),
        body: Container(
          color: AppColors.app_Green_Color,
        ));
  }
}
