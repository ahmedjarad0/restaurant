import 'package:flutter/material.dart';
class SecondTabScreen extends StatefulWidget {
  const SecondTabScreen({Key? key}) : super(key: key);

  @override
  State<SecondTabScreen> createState() => _SecondTabScreenState();
}

class _SecondTabScreenState extends State<SecondTabScreen> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 10,itemBuilder: (context,index){
      return Card(
        elevation: 5,
      );
    },);
  }
}
