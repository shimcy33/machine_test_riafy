import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_riafy/screens/home/sample.dart';
import 'package:swipe_up/swipe_up.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String description =
      "As beautiful as it is, Fittonia is somewhat temperamental and tricky to grow as a houseplant. "
      "It requires very high, constant humidity, such as found in a terrarium,"
      " and cannot tolerate stagnant conditions";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                          bottomRight: Radius.circular(80.0)),
                    ),
                    width: 90,
                    height: 90,
                  ),
                ),
                Container(
                  child: Text('Buy now',
                      style: TextStyle(fontFamily: 'Montserrat',color: Colors.white, fontSize: 12.0)),
                  padding: EdgeInsets.only(bottom: 8),
                )
              ],
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body:Container(child:  SwipeUp(
                body: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),

                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                _buildAppBarWidget(),
                                _buildImageWidget(),
                                _buildTitleSectionWidget(),
                                _buildDescriptionWidget(),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(bottom: 35),
                ),

                child: Material(
                  color: Colors.transparent,
                ),
                // padding: EdgeInsets.only(bottom: 50),
                animate: true,
                color: Colors.black,
                sensitivity: 0.2,
                onSwipe: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SamplePage()));
                },
              ),margin: EdgeInsets.only(bottom: 25),)),
        ],
      ),
    ));
  }

  Widget _buildImageWidget() {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          "assets/images/plantimg.jpg",
          fit: BoxFit.cover,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.only(top: 15, bottom: 10, right: 10, left: 8),
      height: MediaQuery.of(context).size.height * .5,
      width: double.infinity,
    );
  }

  Widget _buildDescriptionWidget() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        description,
        overflow: TextOverflow.clip,
        style: TextStyle(fontFamily: 'Montserrat',fontWeight:FontWeight.w400,color: Colors.black, fontSize: 15),
      ),
    );
  }

  Widget _buildTitleSectionWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 2, 5, 0),
              child: Text(
                "Wicker cone",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'Montserrat',color: Colors.grey, fontSize: 14.0),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 2, 5, 0),
              child: Text(
                "\$420",

                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'Montserrat',  fontWeight:FontWeight.w600,color: Colors.black, fontSize: 16.0),
              ),
            ),
          ],
        ),
        Expanded(
          child: SizedBox(
            width: 20,
          ),

        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(6),
          margin: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Cart ",
                  style: TextStyle(fontFamily: 'Montserrat',color: Colors.white, fontSize: 16),
                ),
              ),
              DottedBorder(
                color: Colors.grey,
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                dashPattern: [15, 10],
                strokeWidth: 1,
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "2",
                    style: TextStyle(fontFamily: 'Montserrat',color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        )),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }

  Widget _buildAppBarWidget() {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
