import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/constant.dart';
import '../widgets/categories.dart';
import '../widgets/homeappbar.dart';
import '../widgets/itemwidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  getProducts() async {
    CollectionReference ref = FirebaseFirestore.instance.collection("products");
    var produducts = await ref.get();
    print(produducts);
    return produducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            Banner1(),
            SearchBar(),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: StringConstants.categories.length,
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      child: CategoriesWidget(StringConstants.categories[i]),
                      onTap: () {
                        StringConstants.selectedIndex = i;
                      },
                    );
                  }),
            ),
            FutureBuilder(
              future: getProducts(),
              builder: (context, AsyncSnapshot snapshot) {
                return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, i) {
                      if (snapshot.hasData) {
                        var myProduct = snapshot.data.docs[i];
                        Product product = Product(
                            myProduct["pid"],
                            myProduct["product_title"],
                            myProduct["product_price"],
                            myProduct["product_discription"],
                            myProduct["size"],
                            myProduct["fertilizer"],
                            myProduct["light"],
                            myProduct["water"],
                            myProduct["rating"],
                            myProduct["product_cat"]);
                        return ItemsWidget(
                            product, ColorConstants.productColors[i]);
                      } else {
                        return CircularProgressIndicator();
                      }
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.77,
            decoration: BoxDecoration(
                border: Border.all(color: Color(ColorConstants.GrayColor)),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "Search here...",
              ),
            ),
          ),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                border: Border.all(color: Color(ColorConstants.GrayColor)),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              ImageContants.options,
            ),
          ),
        ],
      ),
    );
  }
}

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageContants.banner1), fit: BoxFit.cover),
        color: Color(ColorConstants.OffWhite),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              StringConstants.banner1Head,
              style: TextStyle(
                  fontSize: 22,
                  color: Color(ColorConstants.PrimaryColor),
                  fontFamily: FontsConstants.Bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              StringConstants.banner1Desc,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(ColorConstants.PrimaryColor),
                  fontWeight: FontWeight.normal,
                  fontFamily: FontsConstants.Regular),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Color(ColorConstants.GreenColor),
            width: 60,
            height: 5,
          )
        ],
      ),
    );
  }
}
