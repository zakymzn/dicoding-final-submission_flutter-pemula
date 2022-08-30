import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/food_detail_screen.dart';
import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';
import 'package:final_submission_flutter_pemula/data/special_food.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
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
          icon: const Icon(Icons.arrow_back),
        ),
        title: TextField(
          controller: textEditingController,
          decoration: const InputDecoration(
            hintText: "Cari tempat atau makanan di sini",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          style: const TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          cursorWidth: 1,
          onChanged: search,
        ),
        backgroundColor: const Color(0xff189AB4),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return webDesktopSearchScreen(context);
          } else {
            return mobileSearchScreen(context);
          }
        },
      ),
    );
  }

  Widget mobileSearchScreen(BuildContext context) {
    return Container(
      color: const Color(0xffD4F1F4),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];

                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: const Color(0xff189AB4),
                      padding: const EdgeInsets.symmetric(vertical: 10),
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
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "Roboto",
                              color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).push(_createSlideTransition(
                              PlaceDetailScreen(place: place), 1.0, 0.0, 500));
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: foods.length,
              itemBuilder: (context, index) {
                final food = foods[index];

                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: const Color(0xff189AB4),
                      padding: const EdgeInsets.symmetric(vertical: 10),
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
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(_createSlideTransition(
                              FoodDetailScreen(food: food), 1.0, 0.0, 500));
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget webDesktopSearchScreen(BuildContext context) {
    return Container(
      color: const Color(0xffD4F1F4),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width.toDouble() / 5),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
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
                controller: _scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: places.length,
                itemBuilder: (context, index) {
                  final place = places[index];

                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: const Color(0xff189AB4),
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: "Roboto",
                                color: Colors.white),
                          ),
                          onTap: () {
                            Navigator.of(context).push(_createSlideTransition(
                                PlaceDetailScreen(place: place),
                                1.0,
                                0.0,
                                500));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  final food = foods[index];

                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: const Color(0xff189AB4),
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "Roboto",
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(_createSlideTransition(
                                FoodDetailScreen(food: food), 1.0, 0.0, 500));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
