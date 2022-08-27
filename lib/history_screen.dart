import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/general.dart';

// void main() => runApp(const HistoryScreen());

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
              margin: EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage("images/tugulawet.jpg"),
                ),
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
