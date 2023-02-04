import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/models/bn_screen.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/home_screen.dart';
import 'package:ui_app/screens/app/settings_screen.dart';
import 'package:ui_app/screens/app/user_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  final List<BnScreen> _screens = <BnScreen>[
    BnScreen(title: 'Home', widget: HomeScreen()),
    BnScreen(title: 'User', widget: UserScreen()),
    BnScreen(title: 'Category', widget: CategoriesScreen()),
    BnScreen(title: 'Settings', widget: SettingsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_currentIndex].title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'User Name',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              accountEmail: Text(
                'ahmed_23@gmail.com',
                style: GoogleFonts.montserrat(
                  color: Colors.white38,
                  fontSize: 14,
                ),
              ),
              // currentAccountPicture: CircleAvatar(),
              currentAccountPicture: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'frequent_screen');
              },
              minLeadingWidth: 30,
              leading: const Icon(Icons.message),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'frequent_screen');
                  },
                  icon: const Icon(Icons.arrow_forward_ios)),
              title: Text(
                'FAQS',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text('Frequent Question'),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'favorite_screen');
              },
              minLeadingWidth: 30,
              leading: const Icon(Icons.favorite),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'favorite_screen');
                  },
                  icon: const Icon(Icons.arrow_forward_ios)),
              title: Text(
                'Favorite',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text('Frequent Question'),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            ),

            /* Container(
              padding: EdgeInsets.all(15),
              color: Colors.blue,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade300,
                    radius: 40,
                  ),
                  SizedBox(height: 10,),
                  Text('User Name',style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                  Text('ahmed_23@gmail.com',style: GoogleFonts.montserrat(
                    color: Colors.white38,
                    fontSize: 14,
                  ),),
                ],
              ),
            ),*/
          ],
        ),
      ),
      body: _screens[_currentIndex].widget,
      bottomNavigationBar: ClipRRect(
    borderRadius:const BorderRadius.only(
        topLeft: Radius.circular(10), topRight: Radius.circular(10)) ,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (int showIndex) {
            setState(() => _currentIndex = showIndex);
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.grey,
          // fixedColor: Colors.black,
          iconSize: 24,
          // selectedItemColor: Colors.orange,
          // selectedLabelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
          // selectedFontSize: 14,
          // // fixedColor: Colors.red,  error
          selectedIconTheme: const IconThemeData(color: Colors.black, size: 20),
          // unselectedIconTheme:IconThemeData(color: Colors.grey,size: 26),
          // unselectedItemColor: Colors.pink,
          // unselectedFontSize: 14,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'User',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blueGrey,
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
