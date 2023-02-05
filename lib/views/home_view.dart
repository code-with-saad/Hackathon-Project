import 'package:flutter/material.dart';
import 'package:hackathon_project/components/tabbar_component.dart';
import 'package:hackathon_project/views/product_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
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
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image.asset(
                  "assets/images/banner.png",
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.qr_code_scanner),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter),
                    )),
              ],
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tab.length,
                itemBuilder: (context, ind) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                      child: Text("${tab[ind]}"),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner2.png"),
                  Positioned(
                      right: 1,
                      top: 55,
                      child: Image.asset(
                        "assets/images/flower.png",
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner3.png"),
                  Positioned(
                      right: 1,
                      top: 55,
                      child: Image.asset("assets/images/sage.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/banner4.png"),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner5.png"),
                  Positioned(
                      right: 1,
                      top: 55,
                      child: Image.asset("assets/images/croton.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner6.png"),
                  Positioned(
                      right: 1,
                      top: 55,
                      child: Image.asset("assets/images/nest.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/ad.png"),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner7.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductView()));
              },
              child: Stack(
                children: [
                  Image.asset("assets/images/banner8.png"),
                  Positioned(
                      right: 1,
                      top: 55,
                      child: Image.asset("assets/images/alovera.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color(0xff002140),
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: const Text(
                      "Plant a Life Live amongst Living Spread the joy",
                      style: TextStyle(
                          color: Color(0xff002140),
                          fontSize: 34,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
