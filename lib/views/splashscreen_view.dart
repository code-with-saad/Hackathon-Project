import 'package:flutter/material.dart';
import 'package:hackathon_project/views/login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: Color(0xff0D986A),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: const Text(
                      "GET READY BE HIGYENIC",
                      style: TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: const Text(
                      "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                      style: TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff0D986A),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.98, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}