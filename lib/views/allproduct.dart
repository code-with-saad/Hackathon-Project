import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/views/orderdone_view.dart';

import '../utils/constant.dart';
import '../widgets/Images.dart';
import 'productdetails.dart';

class TopPick extends StatelessWidget {
  TopPick({super.key});
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");
  TextEditingController companyName = TextEditingController();
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  addProduct() {
    CollectionReference products =
        FirebaseFirestore.instance.collection("products");
    products
        .add({
          "companyName": companyName.text,
          "productName": productName.text,
          "productPrice": productPrice.text
        })
        .then((value) => print("Product Added"))
        .catchError((e) => print(e));
  }

  getAllProducts() async {
    return products.get();
  }

  topPick(context, companyName, productName, productPrice, productImage,
      rectangularColor) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailProductPage(),
            ));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.22,
              child: Image(
                color: rectangularColor,
                image: AssetImage("assets/images/Rectangle 27.png"),
                width: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            child: Image(
                color: Colors.white,
                image: AssetImage('assets/images/Vector1.png')),
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Image(
                color: Colors.white,
                image: AssetImage('assets/images/Vector2.png')),
          ),
          Positioned(
              left: 30,
              top: 30,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      const Image(
                          image: AssetImage(
                              'assets/images/detailProduct hand.png')),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              left: 30,
              top: 60,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    productName,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.black),
                  ))),
          Positioned(
              left: 30,
              top: 120,
              child: Text(
                productPrice,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              )),
          const Positioned(
              top: 110,
              left: 90,
              child: Image(
                  height: 70,
                  width: 70,
                  image: AssetImage('assets/images/black heart.png'))),
          Positioned(
            top: 110,
            left: 160,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDoneView(),
                    ));
              },
              child: Image(
                  height: 70,
                  width: 70,
                  image: AssetImage('assets/images/detailproduct_add.png')),
            ),
          ),
          Positioned(
              top: 8,
              right: -20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image(
                  image: AssetImage(productImage),
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getAllProducts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Column(
                          children: [
                            topPick(
                                context,
                                'Air Purifier',
                                'Watermelon',
                                '200',
                                Images().PeperomiaObtusfolia,
                                AppColors.app_Green_Color),
                            invitation(),
                            topPick(
                                context,
                                'Air Purifier',
                                'Croton Petra',
                                '900',
                                Images().sage,
                                AppColors.app_light_brown_green_Color),
                            topPick(
                                context,
                                'Air Purifier',
                                'Croton Petra',
                                '900',
                                Images().interior_medium_light,
                                AppColors.app_light_yellow_Color),
                            videoAd(),
                            topPick(
                                context,
                                'Air Purifier',
                                'Bird\'s Nest Fern',
                                '800',
                                Images().layer8,
                                AppColors.app_light_blue_Color),
                            topPick(
                                context,
                                'Air Purifier',
                                'Cactus',
                                '500',
                                Images().layer27,
                                AppColors.app_light_sand_Color),
                            text(),
                          ],
                        ),
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}

text() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Plant a Life",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: AppColors.app_black_Color),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Live amongst Living",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppColors.app_black_Color),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Spread the joy",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff002140)),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

videoAd() {
  return Stack(
    children: [
      Container(
        height: 250,
        width: 350,
      ),
      Positioned(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 170,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Ad Vid Pic.png")),
          ],
        ),
      ),
      Positioned(
        top: 180,
        height: 200,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "Caring for plants should be fun. That's why we offer 1-on-1 virtual consultations from the comfort of your home or office. ",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.app_black_Color,
                fontFamily: 'Poppins'),
          ),
        ),
      ),
    ],
  );
}

invitation() {
  return Stack(
    children: [
      Container(
        height: 150,
        width: 300,
        child: Image.asset("assets/images/Invitation Rectangle.png"),
      ),
      Positioned(
          top: 25,
          left: 15,
          child: Text(
            "Invite a Friend and\nearn Plantify rewards",
            style: TextStyle(
              fontFamily: 'Philosopher',
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          )),
      Positioned(
          top: 80,
          left: 15,
          child: Text(
            "Redeem them to get\ninstant discounts",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: AppColors.app_Green_Color),
          )),
      Positioned(
        top: 80,
        right: 75,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.app_Green_Color,
            ),
            child: Center(
                child: Text(
              'Invite',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
          ),
        ),
      ),
      Positioned(
          bottom: 25,
          right: 5,
          child: Image(
              height: 50,
              image: AssetImage("assets/images/detailProduct logo (1).png"))),
    ],
  );
}
