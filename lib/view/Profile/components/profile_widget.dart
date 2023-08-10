import 'package:flutter/material.dart';

class Profile_Widget extends StatelessWidget {
   final String img;

   const Profile_Widget({
    Key? key,
    required this.img,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   final color = Theme.of(context).colorScheme.primary;
   return Center( 
      child: buildImage(),
   );
  }

  Widget buildImage() {
    final image = NetworkImage(img);

     return ClipOval(
      child: Material(
      color: Colors.transparent,
      child: Ink.image(
      image: image,
      fit: BoxFit.cover,
      width: 100,
      height: 100,
      ),
      ),
    );
}
}