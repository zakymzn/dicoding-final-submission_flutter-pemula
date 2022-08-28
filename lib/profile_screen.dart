import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/general.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff75E6DA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Profil",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffD4F1F4),
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                  colors: [Color(0xff75E6DA), Color(0xff189AB4)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    onPressed: () async {
                      final link = Uri.parse(facebookURL);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      } else {
                        throw "Could not launch $link";
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff189AB4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          facebookIcon,
                          size: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            facebook,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    onPressed: () async {
                      final link = Uri.parse(instagramURL);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      } else {
                        throw "Could not launch $link";
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff189AB4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          instagramIcon,
                          size: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            instagram,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    onPressed: () async {
                      final link = Uri.parse(linkedinURL);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      } else {
                        throw "Could not launch $link";
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff189AB4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          linkedinIcon,
                          size: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            linkedin,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    onPressed: () async {
                      final link = Uri.parse(githubURL);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      } else {
                        throw "Could not launch $link";
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff189AB4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          githubIcon,
                          size: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            github,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
