import 'package:flutter/material.dart';
import 'package:hackathon_project/views/orderdone_view.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff9CE5CB),
        title:Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Image.asset("assets/images/loginlogo.png"),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "PLANTIFY",
              style: TextStyle(
                  color: Color(0xff002140),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/rectangle.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      bottom: 0,
                      child: Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Text(
                          "Air Purifire",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 30,
                      bottom: 0,
                      child: Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const Text(
                          "Watermelon Peperomia",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 30,
                      bottom: 0,
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              "Rs.350",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 195,
                      left: 30,
                      bottom: 0,
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              "Size",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              "5.h",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 20,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderDoneView()));
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              child: Image.asset("assets/images/add.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.grey)),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Image.asset(
                          "assets/images/sage.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 12, 0, 0),
                  child: Text(
                    'Overview',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
