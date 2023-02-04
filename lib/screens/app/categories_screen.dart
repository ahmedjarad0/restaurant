import 'package:flutter/material.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:GridView(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 100/170,
      ),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.black12,
        ),
        Container(
          color: Colors.blue,
        ),

      ],
    ));
  }
}
