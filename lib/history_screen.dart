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
      ),
      body: ListView(
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
            style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
          ),
        ],
      ),
    );
  }
}
