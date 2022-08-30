import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/tourism_place.dart';

class PlaceDetailScreen extends StatelessWidget {
  final TourismPlace place;

  const PlaceDetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          place.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        actions: const [ThumbButton()],
        backgroundColor: const Color(0xff189AB4),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return webDesktopPlaceDetailScreen(context);
          } else {
            return mobilePlaceDetailScreen(context);
          }
        },
      ),
    );
  }

  Widget mobilePlaceDetailScreen(BuildContext context) {
    return Container(
      color: const Color(0xffD4F1F4),
      child: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(place.mainImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              children: place.imageList.map((path) {
                return Container(
                  height: 100,
                  width: 150,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(path),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              "Lokasi : ${place.location}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: Color(0xff05445E),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              place.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget webDesktopPlaceDetailScreen(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Container(
        color: const Color(0xffD4F1F4),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.25,
            height: MediaQuery.of(context).size.height / 1.25,
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              image: AssetImage(place.mainImage),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 10),
                            children: place.imageList.map((path) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(image: AssetImage(path))),
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Lokasi : ${place.location}",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Color(0xff05445E),
                            ),
                          ),
                        ),
                        Text(
                          place.description,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ThumbButton extends StatefulWidget {
  const ThumbButton({Key? key}) : super(key: key);

  @override
  State<ThumbButton> createState() => _ThumbButtonState();
}

class _ThumbButtonState extends State<ThumbButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        icon: Icon(isLiked ? Icons.thumb_up : Icons.thumb_up_outlined));
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
