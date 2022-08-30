import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/data/general.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return webDesktopProfileScreen(context);
        } else {
          return mobileProfileScreen(context);
        }
      },
    );
  }

  Widget mobileProfileScreen(BuildContext context) {
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
            color: Color(0xff05445E),
          ),
        ),
        title: Text(
          "Profil",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
            color: Color(0xff05445E),
          ),
        ),
      ),
      body: Container(
        color: Color(0xffD4F1F4),
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 10),
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
                  Hero(
                    tag: "profile",
                    child: Container(
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
            linkMethod(facebookURL, facebookIcon, facebook),
            linkMethod(instagramURL, instagramIcon, instagram),
            linkMethod(linkedinURL, linkedinIcon, linkedin),
            linkMethod(githubURL, githubIcon, github),
          ],
        ),
      ),
    );
  }

  Widget webDesktopProfileScreen(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Scaffold(
      body: Container(
        color: Color(0xffD4F1F4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: Text(
                    "Profil",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Color(0xff05445E)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Color(0xff75E6DA), Color(0xff189AB4)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: ListView(
                            children: [
                              Hero(
                                tag: "profile",
                                child: Center(
                                  heightFactor: 1.25,
                                  child: CircleAvatar(
                                    radius:
                                        MediaQuery.of(context).size.width / 10,
                                    backgroundImage:
                                        AssetImage("images/profile.jpg"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto",
                                      color: Colors.white),
                                ),
                              ),
                              Text(
                                email,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto",
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Color(0xff75E6DA), Color(0xff189AB4)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              linkMethod(facebookURL, facebookIcon, facebook),
                              linkMethod(
                                  instagramURL, instagramIcon, instagram),
                              linkMethod(linkedinURL, linkedinIcon, linkedin),
                              linkMethod(githubURL, githubIcon, github),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding linkMethod(String url, IconData icon, String socialMediaName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: SizedBox(
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ElevatedButton(
            onPressed: () async {
              final link = Uri.parse(url);
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
                  icon,
                  size: 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    socialMediaName,
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
    );
  }
}
