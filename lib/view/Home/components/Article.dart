import 'package:big_deals/view/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Announce/Announce.dart';

class Article extends StatelessWidget {
  final List image;
  final double size, price;
  final String name;
  const Article(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
          Navigator.push(context , MaterialPageRoute(builder: (context)=> Announce(id:0)));
        },
        child: Container(
          width: size,
          decoration: BoxDecoration(
              border: Border.all(width: 3 , color: AppColors.blue3),
              borderRadius: BorderRadius.circular(15)
          ),
          child:ClipRRect(

            borderRadius: BorderRadius.circular(10),
            child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, pageIndex) {
                  return Container(
                    color: Colors.blue,
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image[index]), fit: BoxFit.fill),
                    ),
                  );
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 250,

                )),
          ) ,
        ),),
        Text(
          name,
          style: const TextStyle(fontFamily: "Tajawal" , fontSize: 27),
        ),
        Text(price.toString() ,
          style: const  TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic , fontFamily: "Tajawal"),
        )
      ],
    );
  }
}
