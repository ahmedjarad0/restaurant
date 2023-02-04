import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/widgets/onboarding_content.dart';
import 'package:ui_app/widgets/page_view_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Visibility(
                    // maintainAnimation: true,
                    // maintainSize: true,
                    //  maintainState: true,
                    // maintainInteractivity: true,
                    // maintainSemantics: true,
                    visible: _currentPage < 2,
                    replacement: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'login_screen');
                      },
                      child: const Text('START'),
                    ),
                    child: TextButton(
                        onPressed: () {
                          _pageController.animateToPage(2,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInBack);
                        },
                        child: const Text('SKIP')))),
            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int currentPag) {
                  // print("current page $currentPag");
                  setState(() {
                    _currentPage = currentPag;
                  });
                },
                children: const [
                  OnboardingPag(
                      image: 'image3',
                      title: 'Search',
                      subTitle:
                          'Discover Restaurants offering the best fast food food near you on Foodwa'),
                  OnboardingPag(
                      image: 'image2',
                      title: 'Order',
                      subTitle:
                          'Our veggie plan is filled with delicious seasonal vegetables, whole grains, beautiful cheeses and vegetarian proteins'),
                  OnboardingPag(
                      image: 'image1',
                      title: 'Eat',
                      subTitle:
                          'Food delivery or pickup from local restaurants, Explore restaurants that deliver near you.')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageViewIndicator(
                  isCurrentPage: _currentPage == 0,
                  marginEnd: 15,
                ),
                PageViewIndicator(
                  isCurrentPage: _currentPage == 1,
                  marginEnd: 15,
                ),
                PageViewIndicator(isCurrentPage: _currentPage == 2),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInBack);
                      }
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                IconButton(
                    onPressed: () {
                      if (_currentPage != 2) {
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInBack);
                      }
                    },
                    icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            Visibility(
              visible: _currentPage==2,
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 3),
                        blurRadius: 4,
                      )
                    ],
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff567189),
                        Color(0xff8EA7E9),
                      ],
                    ),
                  ),

                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            minimumSize: const Size(double.infinity, 50),
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'login_screen');
                        },
                        child: const Text(
                          'START',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                ),
            ),

            const SizedBox(
              height: 70,
            ),
          ]),
        ));
  }
}
/* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage == 0 ? Colors.blue : Colors.grey,
                  borderColor:
                      _currentPage == 0 ? Colors.orange : Colors.transparent,
                  size: 10,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage == 1 ? Colors.blue : Colors.grey,
                  borderColor:
                      _currentPage == 1 ? Colors.orange : Colors.transparent,
                  size: 10,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage == 2 ? Colors.blue : Colors.grey,
                  borderColor:
                      _currentPage == 2 ? Colors.orange : Colors.transparent,
                  size: 10,
                ),
              ],
            ),*/
// SizedBox(
//   height: 70,
// ),
