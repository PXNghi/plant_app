import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detail_screen.dart';

import '../../../constants.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),
              ),);
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelia",
            country: "Finland",
            price: 620,
            press: () {
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Selina",
            country: "USA",
            price: 350,
            press: () { 
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget { // anh va thong tin san pham duoc de cu
  const RecommendPlantCard({
    Key? key, required this.image, required this.title, required this.country, required this.price, required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback? press; // use VoidCallback instead of Function

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container( // container product
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Column(
              children: [
                Image.asset(image),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2), // ??
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>
                    [RichText(
                      text: TextSpan(
                        children: [
                            TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                            TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              )
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$$price',
                        style: Theme.of(context).textTheme.button?.copyWith(color: kPrimaryColor), //??
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



