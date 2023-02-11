import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/constant.dart';
import '../widgets/homeappbar.dart';
import 'cart_view.dart';

class ProductDetails extends StatelessWidget {
  Product product;
  ProductDetails(this.product);

  int getPayment() {
    for (var i = 0; i < StringConstants.cartItems.length - 1; i++) {
      StringConstants.total += StringConstants.cartItems[i].product_price;
    }
    return StringConstants.total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Image.asset(
                ImageContants.bg_top,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Image.asset(
                ImageContants.detailsbg,
              ),
            ),
            Column(children: [
              HomeAppBar2(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              product.product_cat,
                              style: TextStyle(
                                fontFamily: FontsConstants.Bold,
                                fontSize: 25,
                                color: Color(ColorConstants.PrimaryColor),
                              ),
                            ),
                            Image.asset(
                              width: 40,
                              height: 40,
                              ImageContants.bg,
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(ColorConstants.GreenColor),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  product.rating,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(ColorConstants.GreenColor)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20, right: 100),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        maxLines: 2,
                        product.product_title,
                        style: TextStyle(
                          fontFamily: FontsConstants.Bold,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            "PRICE",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(ColorConstants.DarkGrayColor),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            "\$ ${product.product_price}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(ColorConstants.PrimaryColor),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            "SIZE",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(ColorConstants.DarkGrayColor),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            "\$ ${product.size}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(ColorConstants.PrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              final snackBar = SnackBar(
                                content: Text(
                                    "${product.product_title} cost of ${product.product_title} added to Cart"),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {
                                    StringConstants.cartItems.remove(product);
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              StringConstants.cartItems.add(product);
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Color(ColorConstants.GreenColor),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                ImageContants.cart,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              ImageContants.fav_fill,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        StringConstants.overview,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorConstants.PrimaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageContants.water,
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  product.water,
                                  style: TextStyle(
                                      color: Color(ColorConstants.GreenColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "WATER",
                                  style: TextStyle(
                                      color:
                                          Color(ColorConstants.DarkGrayColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageContants.light,
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  product.light,
                                  style: TextStyle(
                                      color: Color(ColorConstants.GreenColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "LIGHT",
                                  style: TextStyle(
                                      color:
                                          Color(ColorConstants.DarkGrayColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageContants.fertilizer,
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  product.fertilizer,
                                  style: TextStyle(
                                      color: Color(ColorConstants.GreenColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "FERTILIZER",
                                  style: TextStyle(
                                      color:
                                          Color(ColorConstants.DarkGrayColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        StringConstants.plant_bio,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorConstants.PrimaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product.product_discription,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontFamily: FontsConstants.Regular,
                          color: Color(ColorConstants.GreenColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Positioned(
                right: -50,
                top: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset(
                  StringConstants.products[0],
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.7,
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartView()),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(ColorConstants.GreenColor),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageContants.cart,
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "View ${StringConstants.cartItems.length} items",
                              style: TextStyle(
                                  fontFamily: FontsConstants.Regular,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Text(
                          "\$ ${getPayment()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
