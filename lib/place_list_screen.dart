import 'package:final_submission_flutter_pemula/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({Key? key}) : super(key: key);

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
        title: Text(
          "Tempat Wisata",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        backgroundColor: Color(0xff189AB4),
        elevation: 2,
      ),
      body: Container(
        color: Color(0xffD4F1F4),
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: tourismPlaceList.length,
          itemBuilder: (BuildContext context, int index) {
            final TourismPlace place = tourismPlaceList[index];
            return Card(
              elevation: 0,
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
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
                            PlaceDetailScreen(place: place), 1.0, 0.0, 500));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          place.name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 3),
                                ),
                              ]),
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
