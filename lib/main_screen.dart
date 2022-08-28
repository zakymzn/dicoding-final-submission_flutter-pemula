import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/search_screen.dart';
import 'package:final_submission_flutter_pemula/profile_screen.dart';
import 'package:final_submission_flutter_pemula/history_screen.dart';
import 'package:final_submission_flutter_pemula/place_list_screen.dart';
import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:final_submission_flutter_pemula/food_list_screen.dart';
import 'package:final_submission_flutter_pemula/food_detail_screen.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';
import 'package:final_submission_flutter_pemula/data/special_food.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "images/logo.png",
            color: Color(0xff05445E),
          ),
        ),
        title: Text(
          "Explore Kebumen",
          style: TextStyle(
            color: Color(0xff05445E),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchScreen();
                },
              ));
            },
            icon: Icon(
              Icons.search,
              color: Color(0xff05445E),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProfileScreen();
                },
              ));
            },
            iconSize: 40,
            splashColor: Colors.white,
            icon: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
        ],
        backgroundColor: Color(0xff75E6DA),
        elevation: 2,
      ),
      body: Container(
        color: Color(0xffD4F1F4),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                "Let's explore Kebumen!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  color: Color(0xff05445E),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Search(),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HistoryScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff189AB4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.menu_book,
                                size: 40,
                              ),
                              Text(
                                "Sejarah",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return PlaceListScreen();
                          })));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff189AB4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.place,
                                size: 40,
                              ),
                              Text(
                                "Tempat\nWisata",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FoodListScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff189AB4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.food_bank,
                                size: 40,
                              ),
                              Text(
                                "Makanan\nKhas",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Rekomendasi Tempat Wisata",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff05445E),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  final TourismPlace place = tourismPlaceList[index];
                  return Card(
                    elevation: 0,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(right: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(place.mainImage),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return PlaceDetailScreen(place: place);
                                },
                              ));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    place.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto",
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            blurRadius: 10.0,
                                            offset: Offset(0, 3),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Rekomendasi Makanan Khas",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff05445E),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  final SpecialFood food = specialFoodList[index];
                  return Card(
                    elevation: 0,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(right: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(food.image),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return FoodDetailScreen(food: food);
                                },
                              ));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto",
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            blurRadius: 10.0,
                                            offset: Offset(0, 3),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
