import 'package:big_deals/view/Home/components/Article.dart';
import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';

class GrpArticle extends StatelessWidget {
  const GrpArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = (MediaQuery.of(context).size.width - 60) / 2;
    List images = ["assets/images/car.png" , "assets/images/teslaa.png" , "assets/images/car.png"];

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 315,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Article( name:"سيارة" , image: images, price: 100, size: size),
          Article(name:"سيارة",image: images, price: 100, size: size)
        ],
      ),
    );
  }
}
