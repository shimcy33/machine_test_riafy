import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machine_test_riafy/screens/home/product_list_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final kTitleStyle = TextStyle(fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 26.0,
    height: 1.5,
  );
  final kTitleStyle1 = TextStyle(fontFamily: 'Montserrat',
    color: Colors.black54,
    fontSize: 26.0,
    height: 1.5,
  );
  final kSubtitleStyle = TextStyle(fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 14.0,
    height: 1.2,
  );

  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 3.0,
      width: 24.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _buildPageIndicator(),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.73,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/plant.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Modular",
                                      style: kTitleStyle,
                                    ),
                                    Text(
                                      " Planters",
                                      style: kTitleStyle1,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: Text(
                                  "Designed to form the artificial\nenvironment of any plant",
                                  style: kSubtitleStyle,
                                ),
                                padding: EdgeInsets.only(left: 20, right: 20),
                              ),
                            ],
                          ),
                        ),
                        height: double.infinity,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/plant.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Modular",
                                      style: kTitleStyle,
                                    ),
                                    Text(
                                      " Planters",
                                      style: kTitleStyle1,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: Text(
                                  "Designed to form the artificial\nenvironment of any plant",
                                  style: kSubtitleStyle,
                                ),
                                padding: EdgeInsets.only(left: 20, right: 20),
                              ),
                            ],
                          ),
                        ),
                        height: double.infinity,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/plant.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Modular",
                                      style: kTitleStyle,
                                    ),
                                    Text(
                                      " Planters",
                                      style: kTitleStyle1,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: Text(
                                  "Designed to form the artificial\nenvironment of any plant",
                                  style: kSubtitleStyle,
                                ),
                                padding: EdgeInsets.only(left: 20, right: 20),
                              ),
                            ],
                          ),
                        ),
                        height: double.infinity,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/plant.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Modular",
                                      style: kTitleStyle,
                                    ),
                                    Text(
                                      " Planters",
                                      style: kTitleStyle1,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: Text(
                                  "Designed to form the artificial\nenvironment of any plant",
                                  style: kSubtitleStyle,
                                ),
                                padding: EdgeInsets.only(left: 20, right: 20),
                              ),
                            ],
                          ),
                        ),
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            child: DottedBorder(
                              color: Colors.grey,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10),
                              dashPattern: [25, 20],
                              strokeWidth: 1,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 50,
                                width: 50,
                              ),
                            ),
                            margin: EdgeInsets.only(left: 25),
                          ),
                          splashColor: Colors.grey,
                          onTap: () {
                            _currentPage == _numPages - 1
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductListScreen(),
                                    ),
                                  )
                                : _pageController.nextPage(
                                    duration: Duration(microseconds: 300),
                                    curve: Curves.easeIn);
                          },
                        )
                      ],
                    ),
                  ),
                  flex: 1,
                ),
                SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
