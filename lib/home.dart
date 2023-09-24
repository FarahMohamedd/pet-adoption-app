import 'package:flutter/material.dart';
import 'second screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color _iconColor1 = Colors.grey;
  Color _iconColor2 = Colors.grey;
  Color _iconColor3 = Colors.grey;
  Color _iconColor4 = Colors.grey;

  void Select(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return Screen2();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip);
                      },
                    ),
                    SizedBox(
                      width: 275,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          " Adopt a ",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Text(
                              "Friend",
                              style:
                              TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage("images/97.jpeg"),
                      width: 240,
                      height: 150,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "search your favourite pet",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.settings),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0))),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                // Container(
                //   height: 30,
                //   width: 360,
                //   color: Colors.white54,
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 15.0),
                //     child: Row(
                //       children: [
                //         Text(
                //           "Waiting for you",
                //           style: TextStyle(
                //               fontSize: 20, fontWeight: FontWeight.bold),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: 370,
                    height: 370,
                    color: Colors.white54,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      children: [
                        GridTile(
                          footer: GridTileBar(
                            title: Text(
                              "Hobbs",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Boston Terrier",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3 years",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: _iconColor1,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (_iconColor1 == Colors.grey) {
                                    _iconColor1 = Colors.red;
                                  } else {
                                    _iconColor1 = Colors.grey;
                                  }
                                });
                              },
                            ),
                          ),
                          header: Container(
                            child: Image(
                              image: AssetImage("images/88.jpeg"),
                              width: 150,
                              height: 120,
                            ),
                          ),
                          child: Container(
                            color: Colors.white,
                          ),
                          //child:
                        ),
                        InkResponse(
                          onTap: () {
                            Select(context);
                          },
                          child: GridTile(
                            footer: GridTileBar(
                              title: Text(
                                "Daisy",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Cavalier King",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "2 years",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                  icon:
                                  Icon(Icons.favorite, color: _iconColor2),
                                  onPressed: () {
                                    setState(() {
                                      if (_iconColor2 == Colors.grey) {
                                        _iconColor2 = Colors.red;
                                      } else {
                                        _iconColor2 = Colors.grey;
                                      }
                                    });
                                  }),
                            ),
                            header: Container(
                              child: Image(
                                image: AssetImage("images/16.jpeg"),
                                width: 100,
                                height: 120,
                              ),
                            ),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          //child:
                        ),
                        GridTile(
                          footer: GridTileBar(
                            title: Text(
                              "Denver",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Boston Terrier",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3 years",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            trailing: IconButton(
                                icon: Icon(Icons.favorite, color: _iconColor3),
                                onPressed: () {
                                  setState(() {
                                    if (_iconColor3 == Colors.grey) {
                                      _iconColor3 = Colors.red;
                                    } else {
                                      _iconColor3 = Colors.grey;
                                    }
                                  });
                                }),
                          ),
                          header: Container(
                            child: Image(
                              image: AssetImage("images/77.jpeg"),
                              width: 100,
                              height: 120,
                            ),
                          ),
                          child: Container(
                            color: Colors.white,
                            height: 100,
                          ),
                          //child:
                        ),
                        GridTile(
                          footer: GridTileBar(
                            title: Text(
                              "Jack",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Cavarier King",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "2 years",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            trailing: IconButton(
                                icon: Icon(Icons.favorite, color: _iconColor4),
                                onPressed: () {
                                  setState(() {
                                    if (_iconColor4 == Colors.grey) {
                                      _iconColor4 = Colors.red;
                                    } else {
                                      _iconColor4 = Colors.grey;
                                    }
                                    // _iconColor=Colors.red;
                                  });
                                }),
                          ),
                          header: Container(
                            child: Image(
                              image: AssetImage("images/55.jpeg"),
                              width: 150,
                              height: 120,
                            ),
                          ),
                          child: Container(
                            color: Colors.white,
                          ),
                          //child:
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  "Farah Mohamed",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                leading: Image(image: AssetImage("images/15.jpg")),
                onTap: () {},
              ),
              SizedBox(
                height: 50,
              ),
              ListTile(
                leading: Icon(Icons.sanitizer, color: Colors.white),
                title: Text(
                  "Adoption",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.data_usage_sharp, color: Colors.white),
                title: Text(
                  "Donation",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add, color: Colors.white),
                title: Text(
                  "Add pet",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.white),
                title: Text(
                  "Favourites",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.white),
                title: Text(
                  "Messages",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.people_alt, color: Colors.white),
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
