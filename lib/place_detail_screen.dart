import 'package:final_submission_flutter_pemula/data/tourism_place.dart';
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
            icon: Icon(Icons.arrow_back)),
        title: Text(
          place.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        actions: [ThumbButton()],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(place.mainImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //     ListView.builder(
          //       itemCount: tourismPlaceList.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         final TourismPlace place = tourismPlaceList[index];
          //         return ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Container(
          //             height: 100,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                 image: AssetImage(place.imageList[index]),
          //               ),
          //             ),
          //           ),
          //         );
          //       },
          //     ),
        ],
      ),
    );
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
