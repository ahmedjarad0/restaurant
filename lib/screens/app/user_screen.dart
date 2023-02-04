import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.person),
            title: Text('App'),
            subtitle: Text('Flutter Developer'),
            trailing: Icon(Icons.arrow_forward_ios),
          );},
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 5);

  }
}
/*body: ListView.builder(
          itemCount: 20,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.person),
          title: Text('App'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.arrow_forward_ios),
);})*/
// body: ListView(
//   padding: EdgeInsets.symmetric(horizontal: 20),
//   physics: BouncingScrollPhysics(),
//   scrollDirection: Axis.vertical,
//   children: [
//     ListTile(
//       contentPadding: EdgeInsets.zero,
//       leading: Icon(Icons.person),
//       title: Text('App'),
//       subtitle: Text('Flutter Developer'),
//       trailing: Icon(Icons.arrow_forward_ios),
//     ),
//     ListTile(
//       contentPadding: EdgeInsets.zero,
//
//       leading: Icon(Icons.person),
//       title: Text('App'),
//       subtitle: Text('Flutter Developer'),
//       trailing: Icon(Icons.arrow_forward_ios),
//     ),
//     ListTile(
//       contentPadding: EdgeInsets.zero,
//
//       leading: Icon(Icons.person),
//       title: Text('App'),
//       subtitle: Text('Flutter Developer'),
//       trailing: Icon(Icons.arrow_forward_ios),
