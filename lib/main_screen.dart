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
          overflow: TextOverflow.fade,
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
              Navigator.of(context)
                  .push(_createSlideTransition(SearchScreen(), 1.0, 0.0, 500));
            },
            icon: Icon(
              Icons.search,
              color: Color(0xff05445E),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(_createSlideTransition(ProfileScreen(), 1.0, 0.0, 500));
            },
            iconSize: 40,
            splashColor: Colors.white,
            icon: Hero(
              tag: "profile",
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xff75E6DA),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return webDesktopScreen(context);
          } else {
            return mobileScreen(context);
          }
        },
      ),
    );
  }

  Widget mobileScreen(BuildContext context) {
    return Container(
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
                        Navigator.of(context).push(_createSlideTransition(
                            HistoryScreen(), 1.0, 0.0, 500));
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
                        Navigator.of(context).push(_createSlideTransition(
                            PlaceListScreen(), 1.0, 0.0, 500));
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
                        Navigator.of(context).push(_createSlideTransition(
                            FoodListScreen(), 1.0, 0.0, 500));
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
                            Navigator.of(context).push(_createSlideTransition(
                                PlaceDetailScreen(place: place),
                                1.0,
                                0.0,
                                500));
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
                            Navigator.of(context).push(_createSlideTransition(
                                FoodDetailScreen(food: food), 1.0, 0.0, 500));
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
    );
  }

  Widget webDesktopScreen(BuildContext context) {
    return Container(
      color: Color(0xffD4F1F4),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: const Text(
              "Let's explore Kebumen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                color: Color(0xff05445E),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createSlideTransition(
                              HistoryScreen(), 1.0, 0.0, 500));
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createSlideTransition(
                              PlaceListScreen(), 1.0, 0.0, 500));
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createSlideTransition(
                              FoodListScreen(), 1.0, 0.0, 500));
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
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "Rekomendasi Tempat Wisata",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 24,
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
                      width: 600,
                      // height: 300,
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
                            Navigator.of(context).push(_createSlideTransition(
                                PlaceDetailScreen(place: place),
                                1.0,
                                0.0,
                                500));
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 24,
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
                      width: 600,
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
                            Navigator.of(context).push(_createSlideTransition(
                                FoodDetailScreen(food: food), 1.0, 0.0, 500));
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
    );
  }

  Route _createSlideTransition(Widget pageTarget, dx, dy, int milliseconds) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => pageTarget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(dx, dy);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: milliseconds),
    );
  }
}
