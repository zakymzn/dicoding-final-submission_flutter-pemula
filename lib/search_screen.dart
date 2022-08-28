import 'package:final_submission_flutter_pemula/food_detail_screen.dart';
import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';
import 'package:final_submission_flutter_pemula/data/special_food.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  List<TourismPlace> places = tourismPlaceList;
  List<SpecialFood> foods = specialFoodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Cari tempat atau makanan di sini",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          cursorWidth: 1,
          onChanged: search,
        ),
        backgroundColor: Color(0xff189AB4),
        elevation: 2,
      ),
      body: Container(
          color: Color(0xffD4F1F4),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Tempat Wisata",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Color(0xff05445E),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];

                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Color(0xff189AB4),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                place.mainImage,
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            title: Text(
                              place.name,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PlaceDetailScreen(place: place),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Makanan Khas",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Color(0xff05445E),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    final food = foods[index];

                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Color(0xff189AB4),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                food.image,
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            title: Text(
                              food.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FoodDetailScreen(food: food),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void search(String query) {
    final placeSuggestions = tourismPlaceList.where((place) {
      final placeName = place.name.toLowerCase();
      final input = query.toLowerCase();

      return placeName.contains(input);
    }).toList();

    setState(() {
      places = placeSuggestions;
    });

    final foodSuggestions = specialFoodList.where((food) {
      final foodName = food.name.toLowerCase();
      final input = query.toLowerCase();

      return foodName.contains(input);
    }).toList();

    setState(() {
      foods = foodSuggestions;
    });
  }
}
