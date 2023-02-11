import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/constant.dart';
import '../views/productdetails.dart';

class ItemsWidget extends StatelessWidget {
  Product product;
  int color;
  ItemsWidget(this.product, this.color);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          height: 250,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetails(product)),
              );
            },
            child: Stack(
              children: [
                Positioned(
                  top: 15.0,
                  left: 0.0,
                  right: 0.0,
                  child: Image.asset(
                    width: 40,
                    height: 40,
                    ImageContants.bg,
                  ),
                ),
                Image.asset(
                  ImageContants.productbg,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.product_cat.toUpperCase(),
                      style: TextStyle(
                          color: Color(ColorConstants.PrimaryColor),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        product.product_title,
                        style: TextStyle(
                            color: Color(ColorConstants.PrimaryColor),
                            fontSize: 35,
                            fontFamily: FontsConstants.Bold,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ ${product.product_price}",
                          style: TextStyle(
                              color: Color(ColorConstants.PrimaryColor),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          ImageContants.fav,
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 30,
                        ),
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
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(ColorConstants.GreenColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              ImageContants.cart,
                              height: 40,
                              width: 40,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -20,
          right: -30,
          child: Image.asset(
            width: 160,
            height: 220,
            StringConstants.products[product.pid],
          ),
        ),
      ],
    );
  }
}
