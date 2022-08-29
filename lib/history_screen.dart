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
      body: Container(
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
      ),
    );
  }
}
