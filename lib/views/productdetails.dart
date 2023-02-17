import 'package:flutter/material.dart';
import 'package:hackathon_project/widgets/detailproduct.dart';
import '../utils/constant.dart';
import '../widgets/Images.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  DetailProduct_Function(productName, price, size, productImage) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.50,
          color: Colors.white,
        ),
        Positioned(
          child: Image.asset(
            'assets/images/detailproduct_green_ rectangle.png',
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            bottom: 20,
            child: Container(
              alignment: Alignment.center,
              child: Image(
                  image: AssetImage('assets/images/detailproduct_circle.png')),
            )),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: Image(
              image:
                  AssetImage('assets/images/detailproduct small circle.png')),
        )),
        Positioned(
            left: 40,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Air Purifier",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.app_black_Color),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Image(
                        image:
                            AssetImage('assets/images/detailProduct hand.png')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                    Image(image: AssetImage('assets/images/rating.png')),
                  ],
                )
              ],
            )),
        Positioned(
            top: 40,
            left: 40,
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  productName,
                  style: TextStyle(
                      fontFamily: 'Philosopher',
                      wordSpacing: 2,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w700,
                      fontSize: 38,
                      color: AppColors.app_black_Color),
                ))),
        Positioned(
            top: 170,
            left: 40,
            child: Text(
              "Price",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.app_black_Color),
            )),
        Positioned(
            top: 190,
            left: 40,
            child: Text(
              price,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.app_black_Color),
            )),
        Positioned(
            top: 250,
            left: 40,
            child: Text(
              "SIZE",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.app_black_Color),
            )),
        Positioned(
            top: 270,
            left: 40,
            child: Text(
              size,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.app_black_Color,
              ),
            )),
        Positioned(
            bottom: -10,
            left: 50,
            child: Image(
                image: AssetImage('assets/images/detailproduct_add.png'))),
        Positioned(
            bottom: 10,
            left: 140,
            child: Image(image: AssetImage('assets/images/black heart.png'))),
        Positioned(
            bottom: 0,
            left: 70,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.39,
                width: MediaQuery.of(context).size.width * 1,
                child: Image(image: AssetImage(productImage)))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailPage_Function.buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailProduct_Function(
                "Watermelon\nPeperomia", '350', "5.1", Images().sage),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Overview",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColors.app_black_Color),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Image(
                              image: AssetImage('assets/images/drop.png')),
                        ),
                        title: Text(
                          '250ml',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: AppColors.app_Green_Color),
                        ),
                        subtitle: Text(
                          'WATER',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                              color: AppColors.app_black_Color),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child:
                              Image(image: AssetImage('assets/images/sun.png')),
                        ),
                        title: Text(
                          '35-40%',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: AppColors.app_Green_Color),
                        ),
                        subtitle: Text(
                          'Light',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                              color: AppColors.app_black_Color),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Image(
                              image:
                                  AssetImage('assets/images/fertilizer.png')),
                        ),
                        title: Text(
                          '250gm',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: AppColors.app_Green_Color),
                        ),
                        subtitle: Text(
                          'Fertilizer',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                              color: AppColors.app_black_Color),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  "Plant Bio",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: AppColors.app_black_Color),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Text(
                                  "No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: 'Philosopher',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: AppColors.app_black_Color),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, top: 20, right: 50),
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              "assets/images/video.png")),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 29.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 27.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              "assets/images/video.png")),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 29.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 27.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              "assets/images/video.png")),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 29.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              'assets/images/image 27.png')),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
