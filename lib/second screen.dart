import 'package:flutter/material.dart';
import 'home.dart';
class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  void Back(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return HomePage();
      }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage("images/16.jpeg"),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Daisy",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 33,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text(
                          "Cavalier King",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Text(
                              "Charles Spaniel",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "2 Years",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      " Los Angeles, CA",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(
                          image: AssetImage("images/15.jpg"),
                          width: 60,
                          height: 60,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Ryder Pu",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Text(
                              "Owner",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "28,April 2020 ",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      "Daisy is abondunt by his owner because he consumed more food than they expected him to eat. "),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minWidth: 20,
                      height: 45,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Adoption",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minWidth: 280,
                      height: 45,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 15.0, right: 10.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Back(context);
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                      image: AssetImage("images/15.jpg"),
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

