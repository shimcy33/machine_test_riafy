import 'dart:math';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:machine_test_riafy/screens/home/product_detail_page.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final kTitleStyle = TextStyle(fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );
  final kTitleStyle1 = TextStyle(fontFamily: 'Montserrat',
    color: Colors.black54,
    fontSize: 18.0,
    height: 1.5,
  );

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
      child: WillPopScope(
          onWillPop: null,
          child: Scaffold(
            body: Column(
              children: [
                _buildAppBarWidget(),
                _buildTitleWidget(),
                _buildHeaderActionsWidget(),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(15),
                    primary: false,
                    crossAxisCount: 4,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildTile(index);
                    },
                    staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildTitleWidget() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 20, bottom: 10),
      child: Row(
        children: [
          Text(
            "Choose",
            style: kTitleStyle1,
          ),
          Text(
            " Device",
            style: kTitleStyle,
          )
        ],
      ),
    );
  }

  Widget _buildHeaderActionsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: DottedBorder(
              color: Colors.grey,
              borderType: BorderType.RRect,
              radius: Radius.circular(16),
              dashPattern: [25, 20],
              strokeWidth: 2,
              child: InkWell(
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 22,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 36,
                  width: 40,
                ),
                splashColor: Colors.grey,
                onTap: () {},
              )),
          margin: EdgeInsets.only(left: 25),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: DottedBorder(
              color: Colors.grey,
              borderType: BorderType.RRect,
              radius: Radius.circular(16),
              dashPattern: [25, 20],
              strokeWidth: 2,
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(4),
                  child: Image.asset("assets/images/equalizer.png"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 36,
                  width: 40,
                ),
                splashColor: Colors.grey,
                onTap: () {},
              )),
          margin: EdgeInsets.only(left: 8),
        ),
        SizedBox(
          width: 25,
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
          width: 20,
        )
      ],
    );
  }

  Widget _buildAppBarWidget() {
    return Padding(
      padding: EdgeInsets.all(15),
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
              iconSize: 10,
              icon:   Container(child: Image.asset("assets/images/menu.png"),padding: EdgeInsets.all(7),),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget buildTile(int index) {
    return InkWell(
      child: index == 1
          ? Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                      margin: EdgeInsets.only(
                          top: 15, bottom: 10, right: 10, left: 8),
                      height: 230,
                    ),
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
                        style: TextStyle(fontFamily: 'Montserrat', fontWeight:FontWeight.w600,color: Colors.black, fontSize: 16.0),
                      ),
                    ),
                  ],
                )
              ],
            )
          : index.isEven
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 8),
                      height: 230,
                    ),
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
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                      margin: EdgeInsets.only(
                          top: 15, bottom: 10, right: 10, left: 5),
                      height: 250,
                    ),
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
                        style: TextStyle(fontFamily: 'Montserrat', fontWeight:FontWeight.w600,color: Colors.black, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
      splashColor: Colors.grey,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(),
          ),
        );
      },
    );
  }
}
