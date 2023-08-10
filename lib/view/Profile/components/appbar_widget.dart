import 'package:flutter/material.dart';

import '../../Main/main_page.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.indigo.shade900,),
    leading: IconButton(
      onPressed: () {
        Navigator.push(context , MaterialPageRoute(builder: (context) => Menu(index:5)));
      },
      icon: const Icon(Icons.arrow_back),
      color: Colors.indigo.shade900,
    ),
    backgroundColor: Colors.transparent,
    elevation:0,
  );
}

// {
// Navigator.push(context, MaterialPageRoute(builder: (context) {
// return const Menu(index: 5,);
// }));
// }
