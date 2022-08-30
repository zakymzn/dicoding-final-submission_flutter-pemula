import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/general.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Sejarah",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xff189AB4),
          elevation: 2,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return webDesktopHistoryScreen(context);
            } else {
              return mobileHistoryScreen(context);
            }
          },
        ));
  }

  Widget mobileHistoryScreen(BuildContext context) {
    return Container(
      color: Color(0xffD4F1F4),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/tugulawet.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(
            history,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
          ),
        ],
      ),
    );
  }

  Widget webDesktopHistoryScreen(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Container(
      color: Color(0xffD4F1F4),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 1.25,
          child: Row(children: [
            Expanded(
              child: Container(
                child: ListView(
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage("images/tugulawet.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
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
                      history,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
                    ),
                  )
                ],
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
