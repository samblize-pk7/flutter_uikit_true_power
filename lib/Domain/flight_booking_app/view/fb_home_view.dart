import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit_true_power/Domain/flight_booking_app/model/category_model.dart';
import 'package:flutter_uikit_true_power/Domain/flight_booking_app/model/location_model.dart';
import 'package:flutter_uikit_true_power/Domain/flight_booking_app/view/fb_login_view.dart';
import 'package:flutter_uikit_true_power/Routes/routes.dart';
import 'package:get/get.dart';

import 'package:ionicons/ionicons.dart';

final List<CategoryModel> _catList = [
  CategoryModel(
      color: Colors.redAccent, title: 'Flight', icon: Ionicons.airplane),
  CategoryModel(
      color: Colors.lightGreenAccent[700]!,
      title: 'Hotel',
      icon: Ionicons.home),
  CategoryModel(color: Colors.purple[800]!, title: 'Car', icon: Ionicons.car),
  CategoryModel(
      color: Colors.lightBlueAccent,
      title: 'Restaurant',
      icon: Ionicons.restaurant),
  CategoryModel(color: Colors.purpleAccent, title: 'Bus', icon: Ionicons.bus),
  CategoryModel(
      color: Colors.tealAccent[700]!, title: 'Ship', icon: Ionicons.boat),
  CategoryModel(
      color: Colors.orangeAccent[700]!, title: 'Cafe', icon: Ionicons.cafe),
  CategoryModel(
      color: Colors.blueGrey, title: 'Library', icon: Ionicons.library),
];

class FBImageAssets {
  static List<LocationModel> locations = [
    LocationModel(
        assetAddress: 'assets/images/flight_booking/venice-bridge.jpg',
        priceFrom: '490',
        country: 'Italy',
        town: 'Bridge'),
    LocationModel(
        assetAddress:
            'assets/images/flight_booking/Dubai_United_Arab _Emirates.jpg',
        priceFrom: '510',
        country: 'UnitedArab',
        town: 'Dubai'),
    LocationModel(
        assetAddress: 'assets/images/flight_booking/Mandorla-Italy.jpg',
        priceFrom: '650',
        country: 'Italy',
        town: 'Mandorla'),
    LocationModel(
        assetAddress: 'assets/images/flight_booking/Paris-France.jpg',
        priceFrom: '340',
        country: 'France',
        town: 'Paris'),
    LocationModel(
        assetAddress:
            'assets/images/flight_booking/Tian-Tan-Buddha-Hong-Kong.jpg',
        priceFrom: '380',
        country: 'HongKong',
        town: 'Buddha'),
    LocationModel(
        assetAddress: 'assets/images/flight_booking/Venice-Italy.jpg',
        priceFrom: '440',
        country: 'Italy',
        town: 'Venice'),
  ];
  static List<LocationModel> popularPlace = [
    LocationModel(
        assetAddress: 'assets/images/flight_booking/Mandorla-Italy.jpg',
        priceFrom: '650',
        country: 'Italy',
        town: 'Mandorla'),
    LocationModel(
        assetAddress: 'assets/images/flight_booking/Venice-Italy.jpg',
        priceFrom: '440',
        country: 'Italy',
        town: 'Venice'),
    LocationModel(
        assetAddress:
            'assets/images/flight_booking/Tian-Tan-Buddha-Hong-Kong.jpg',
        priceFrom: '380',
        country: 'HongKong',
        town: 'Buddha'),
  ];
}

class FBHomeView extends StatelessWidget {
  FBHomeView({Key? key}) : super(key: key);
  final EdgeInsets _padding = EdgeInsets.symmetric(horizontal: 20, vertical: 5);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: fbPinkThemData,
      child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: _padding,
              child: Text(
                'Home',
                style: headline.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _catList.length,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 79,
                        decoration: BoxDecoration(
                            // color: Colors.cyan,
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                color: _catList[i].color,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: _catList[i].color.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(
                                        2, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Icon(
                                _catList[i].icon,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(_catList[i].title)
                          ],
                        ),
                      );
                    })),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: _padding,
              child: Text('Best offers',
                  style: headline.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 20)),
            ),
            Padding(
              padding: _padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Destination',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w100),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FBImageAssets.locations.length,
                  itemBuilder: (context, offerIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesName.fbSearch);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(
                                        2, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      FBImageAssets
                                          .locations[offerIndex].assetAddress,
                                      width: 280,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment(1,
                                                .6), // 10% of the width, so there are ten blinds.
                                            colors: <Color>[
                                              Color(0x1E070706),
                                              Color(0xD3070706)
                                            ], // red to yellow
                                            tileMode: TileMode
                                                .clamp, // repeats the gradient over the canvas
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 15,
                                        left: 25,
                                        child: Text(
                                            'from \$${FBImageAssets.locations[offerIndex].priceFrom} USD',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16))),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              FBImageAssets.locations[offerIndex].country,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(FBImageAssets.locations[offerIndex].town,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: _padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Places',
                      style: headline.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FBImageAssets.popularPlace.length,
                  itemBuilder: (context, offerIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(onTap: (){
                                Get.toNamed(RoutesName.fbSearch);
                          },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(
                                        2, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      FBImageAssets
                                          .popularPlace[offerIndex].assetAddress,
                                      width: 380,
                                      height: 230,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment(1,
                                                .6), // 10% of the width, so there are ten blinds.
                                            colors: <Color>[
                                              Color(0x1E070706),
                                              Color(0xD3070706)
                                            ], // red to yellow
                                            tileMode: TileMode
                                                .clamp, // repeats the gradient over the canvas
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 25,
                                      left: 25,
                                      child: Text(
                                        FBImageAssets
                                            .popularPlace[offerIndex].country,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 25,
                                      child: Text(
                                          FBImageAssets
                                              .popularPlace[offerIndex].town,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w100)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ))),
    );
  }
}
