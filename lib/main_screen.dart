// import 'package:final_submission_flutter_pemula/data/special_food.dart';
// import 'package:final_submission_flutter_pemula/data/tourism_place.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/history_screen.dart';
import 'package:final_submission_flutter_pemula/place_list_screen.dart';
import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:final_submission_flutter_pemula/food_list_screen.dart';
import 'package:final_submission_flutter_pemula/food_detail_screen.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TourismPlace place;
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Kebumen",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            )),
        backgroundColor: Color(0xff75E6DA),
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 40,
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/profile.jpg"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: const Text(
              "Let's explore Kebumen!",
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Search(),
          Row(
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
                      primary: Color(0xffEA8E4E),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.history,
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
                      primary: Color(0xffEA8E4E),
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
                      primary: Color(0xffEA8E4E),
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
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              "Rekomendasi Tempat Wisata",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                recommendationCard(
                  "images/place/Pantai Menganti/main.jpg",
                  "Pantai Menganti",
                ),
                recommendationCard(
                    "images/place/Benteng Van der Wijck/main.jpg",
                    "Benteng Van der Wijck"),
                recommendationCard("images/place/Bukit Pentulu Indah/main.jpg",
                    "Bukit Pentulu Indah"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              "Rekomendasi Makanan Khas",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                recommendationCard(
                    "images/food/sate_ambal.jpg", "Sate Ayam Ambal"),
                recommendationCard(
                    "images/food/nasi_penggel.jpg", "Nasi Penggel"),
                recommendationCard(
                    "images/food/soto_tmw.jpg", "Soto Tamanwinangun"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card recommendationCard(String imagePath, String recommendationName) {
    return Card(
      margin: EdgeInsets.only(right: 20),
      elevation: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recommendationName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
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
    );
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          focusColor: Colors.green,
          suffixIcon: Icon(Icons.search),
          hintText: "Cari tempat atau makanan di sini ...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}
