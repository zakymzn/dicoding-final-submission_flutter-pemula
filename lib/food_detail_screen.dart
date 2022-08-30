import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/special_food.dart';

class FoodDetailScreen extends StatelessWidget {
  final SpecialFood food;

  const FoodDetailScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            food.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
          actions: [ThumbButton()],
          backgroundColor: Color(0xff189AB4),
          elevation: 2,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return webDesktopFoodDetailScreen(context);
            } else {
              return mobileFoodDetailScreen(context);
            }
          },
        ));
  }

  Widget mobileFoodDetailScreen(BuildContext context) {
    return Container(
      color: Color(0xffD4F1F4),
      child: ListView(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(food.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Lokasi : ${food.location}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: Color(0xff05445E),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              food.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
            ),
          )
        ],
      ),
    );
  }

  Widget webDesktopFoodDetailScreen(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Container(
      color: Color(0xffD4F1F4),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 1.25,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(food.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Lokasi : ${food.location}",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Color(0xff05445E),
                          ),
                        ),
                      ),
                      Text(
                        food.description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
