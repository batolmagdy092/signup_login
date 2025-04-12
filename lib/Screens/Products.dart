import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Screens/Product_Details.dart';
import 'package:signup_login/Widget/Product_Details.dart';

import '../Provider/Product_Provider.dart';
class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(fontSize: 20, backgroundColor: Colors.green),
        ),
        centerTitle: true,
      ),
      body: Consumer<Product_Provider>(
        builder: (context, value, child) {
          var vertical = value.productmodel;
          var horizontal = value.productmodel;

          if (vertical == null || horizontal == null) {
            value.getproduct();
            value.getproductProvider2();
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: [
                // Horizontal List
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: horizontal.product.length,
                    itemBuilder: (context, index) {
                      var item = horizontal.product[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                image: item["image"],
                                name: item["name"],
                                des: item["description"],
                              ),
                            ),
                          );
                        },
                        child: ProductDetails(
                          image: item["image"],
                          name: item["name"],
                        ),
                      );
                    },
                  ),
                ),
                Divider(),
                // Vertical Grid
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 2),
                    itemCount: vertical.product.length,
                    itemBuilder: (context, index) {
                      var item = vertical.product[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                image: item["image"],
                                name: item["name"],
                                des: item["description"],
                              ),
                            ),
                          );
                        },
                        child: ProductDetails(
                          image: item["image"],
                          name: item["name"],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}