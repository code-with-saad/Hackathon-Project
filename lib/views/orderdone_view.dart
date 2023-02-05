import 'package:flutter/material.dart';
import 'package:hackathon_project/views/home_view.dart';

class OrderDoneView extends StatefulWidget {
  const OrderDoneView({super.key});

  @override
  State<OrderDoneView> createState() => _OrderDoneViewState();
}

class _OrderDoneViewState extends State<OrderDoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Color.fromARGB(255, 194, 255, 235),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: const Text(
                      "Order Received",
                      style: TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 36,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Order ID : #293092309",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset("assets/images/mainlogo.png"),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D986A),
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.95, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()));
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
