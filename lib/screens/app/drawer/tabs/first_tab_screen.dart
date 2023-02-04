import 'package:flutter/material.dart';
class FirstTabScreen extends StatefulWidget {
  const FirstTabScreen({Key? key}) : super(key: key);

  @override
  State<FirstTabScreen> createState() => _FirstTabScreenState();
}

class _FirstTabScreenState extends State<FirstTabScreen> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (contex, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text('Tile'),
        );
      },
    );
  }
}
