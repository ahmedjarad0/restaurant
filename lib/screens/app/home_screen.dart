import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/widgets/home_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose() ;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 150,
            // maxWidth: 200,
          ),
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int pageview){
                print('page view number $pageview');
              },
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  // width: 100,
                  alignment: Alignment.center,
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  decoration: BoxDecoration(
                    color: index %2 ==0 ?Colors.grey: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('container :$index'),
                );
              }),
        ),
        HomeSection(title: 'Section Title', onPressed: () {}),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 130,
          ),
          child: GridView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10,
                  // mainAxisExtent: 90,
                  childAspectRatio: 130 / 90),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  color: Colors.grey,
                  margin:
                  EdgeInsetsDirectional.only(end: index == 9 ? 0 : 10),
                );
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        HomeSection(title: 'Favorite Products', onPressed: () {}),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 6,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              );

              // return Container(
              //   width: 70,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(10),
              //     boxShadow: [
              //       BoxShadow(color: Colors.black26,offset: Offset(0,0),blurRadius: 1)
              //     ]
              //   ),
              // );

            }),
        const SizedBox(
          height: 20,
        ),
        HomeSection(title: 'Offers', onPressed: () {}),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: index == 5 ? 0 : 10),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 3)
                    ]
                ),
              );
            })
      ],
    ));
  }
}
/*ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
            ),
            child: ListView.builder(
              itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return Container(
                margin: EdgeInsetsDirectional.only(end: index ==9 ?0:10),
                color: Colors.grey,
                width: 100,
              );
            }),
          ),*/
