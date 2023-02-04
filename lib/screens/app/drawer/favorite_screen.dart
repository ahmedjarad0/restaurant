import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/screens/app/drawer/tabs/first_tab_screen.dart';
import 'package:ui_app/screens/app/drawer/tabs/second_tab_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        // bottom: TabBar(
        //   controller: _tabController,
        //   // padding: EdgeInsets.all(10),
        //   labelPadding: EdgeInsets.all(10),
        //   labelColor: Colors.white,
        //   labelStyle: GoogleFonts.montserrat(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 16,
        //     color: Colors.orange,
        //   ),
        //   indicatorColor: Colors.orange,
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   indicatorWeight: 4,
        //   // indicator: BoxDecoration(
        //   //   color: Colors.orange,
        //   //   borderRadius: BorderRadius.circular(10)
        //   // ),
        //   // indicatorPadding: EdgeInsets.all(5),
        //   unselectedLabelColor: Colors.white60,
        //   onTap: (int selected) {
        //     print('Selected $selected');
        //   },
        //   tabs: [
        //     Text('First'),
        //     Text('Second'),
        //   ],
        // ),
      ),
      //   body: TabBarView(controller: _tabController, children: [
      //   FirstTabScreen(),
      //   SecondTabScreen(),
      // ]),
      body: ListView(
        // physics:NeverScrollableScrollPhysics() ,
        padding: EdgeInsets.all(10),
        children: [
          const CircleAvatar(
            radius: 40,
          ),
          Text(
            'Title Here',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'SubTitle Here',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 40,
          //   decoration: BoxDecoration(
          //       color: Colors.blue.shade300,
          //       borderRadius: BorderRadius.circular(10),
          //       boxShadow: [
          //         BoxShadow(
          //             color: Colors.black45,
          //             offset: Offset(0, 3),
          //             blurRadius: 1)
          //       ]),
            SizedBox(
            height: 30,
              child: TabBar(
                // padding: EdgeInsets.all(),
                // indicatorPadding: EdgeInsets.all(10),

                controller: _tabController,
                onTap: (int selectedTabBar) {
                  setState(() {
                    _tabController.index = selectedTabBar;
                  });
                },
                labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.orange,
                indicator: BoxDecoration(

                  color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 3),
                              blurRadius: 1)
                        ]),
                tabs: [
                  Text(
                    'First',
                    style: GoogleFonts.montserrat(),
                  ),
                  Text(
                    'Second',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
                labelColor: Colors.black,
                labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black26,
              ),
            ),

          IndexedStack(index: _tabController.index, children: [
            Visibility(
                visible: _tabController.index == 0, child: FirstTabScreen()),
            Visibility(
                visible: _tabController.index == 1, child: SecondTabScreen()),
          ]),

          // IndexedStack(
          //     index: _tabController.index,
          //       children: [
          //         Visibility(visible: _tabController.index==0,child: FirstTabScreen()),
          //         Visibility(visible: _tabController.index==1,child: SecondTabScreen()),
          //       ]),
        ],
    )
    );
  }
}
