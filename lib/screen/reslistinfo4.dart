import 'package:flutter/material.dart';
import 'package:pjwireless/screen/reslist.dart';
import 'package:pjwireless/screen/map.dart';

class reslistinfo4 extends StatefulWidget {
  @override
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<reslistinfo4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Savoey Thamaharaj",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        res4(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ((MediaQuery.of(context).size.width - 175) / 2),
                      top: (MediaQuery.of(context).size.height+175) / 5),
                  child: Hero(
                    tag: "res4",
                    child: ClipOval(
                      child: Container(
                        child: new Image.asset(
                          "assets/Savoey.jpg",
                          fit: BoxFit.cover,
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Savoey Thamaharaj is a river side restaurant that has variety of delicous foods."
                      "\n Opening hours: 10:00 am - 10:00 pm"
                      "\n Tel: 086-341-8472"
                      "\n Address: 2nd floor, G Building, Mahathat Ally, Maharaj Rd, Phrabromratchawang, Phranakhon, Bangkok 10120 Thailand"),

                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.yellow[400],
                          child: Text("Map",
                              style:
                              TextStyle(color: Colors.black, fontSize: 22)),
                          onPressed: () {
                            Map.openMap(13.7554093,100.488783);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height /1.3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget res4() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Text(
          "Japanese Restaurant",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 15, color: Colors.blueGrey),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>
          [
            Column(
              children: <Widget>[
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 5,
            ),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          ],
        ),
      ],
    ),
  );
}
