import 'dart:ui';

import 'package:flutter/material.dart';

import 'User.dart';
import 'conversation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "main",
      routes: {
        "main": (context) => MyHomePage(),
        "conversation": (context) => ConversationPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        textTheme: TextTheme(
          headline1: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blueGrey),
          headline2: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.grey)
        )
      ),
      home: MyHomePage(),
    );
  }
}

class Pair<F, S>{
  Pair(this.left, this.right);

  F left;

  S right;
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> photos = new List(456);
    List<User> followers = new List(602);
    List<User> follows = new List(290);

    User user = new User(
      firstName: "Anna",
      lastName: "Alvarado",
      workPlace: "Guildhall School of Music & Drama",
      city: "London",
      country: "UK",
      photos: photos,
      followers: followers,
      follows: follows,
      avatar: "lib/assets/avatar.PNG"
    );

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                  child: Column(
                    children: [
                      ApplicationBar(
                        page: ConversationPage(),
                      ),
                      Row(
                        children: [
                          Text(
                            "My Profile",
                            textScaleFactor: 2,
                            style: Theme.of(context).textTheme.headline1
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(user.avatar),
                                        fit: BoxFit.fill
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                user.firstName + " " + user.lastName,
                                textScaleFactor: 2,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                user.workPlace,
                                style: Theme.of(context).textTheme.headline2,
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  user.city + ", " + user.country,
                                  style: Theme.of(context).textTheme.headline2,
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Photos",
                                          style: Theme.of(context).textTheme.headline2,
                                        ),
                                        Text(
                                          user.photos.length.toString(),
                                          style: Theme.of(context).textTheme.headline1,
                                        )
                                      ],

                                    ),
                                  ),
                                  Expanded(
                                    child:  Column(
                                      children: [
                                        Text(
                                          "Followers",
                                          style: Theme.of(context).textTheme.headline2,
                                        ),
                                        Text(
                                          user.followers.length.toString(),
                                          style: Theme.of(context).textTheme.headline1,
                                        )
                                      ],

                                    ),
                                  ),
                                  Expanded(
                                    child:  Column(
                                      children: [
                                        Text(
                                          "Follows",
                                          style: Theme.of(context).textTheme.headline2,
                                        ),
                                        Text(
                                          user.follows.length.toString(),
                                          style: Theme.of(context).textTheme.headline1,
                                        )
                                      ],

                                    ),
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.24 + 10,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(image: AssetImage("lib/assets/Image1.PNG"), fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.12,
                                  width: MediaQuery.of(context).size.width * 0.42,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(image: AssetImage("lib/assets/Image2.PNG"), fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.12,
                                  width: MediaQuery.of(context).size.width * 0.42,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(image: AssetImage("lib/assets/Image3.PNG"), fit: BoxFit.fill),
                                  ),
                                )
                              ],
                            ),
                          )

                        ]
                    ),
                  ),
                ),
              )
              /*Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image(image: AssetImage("lib/assets/Image4.PNG"), fit: BoxFit.fill),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image(image: AssetImage("lib/assets/Image4.PNG"), fit: BoxFit.fill),
                       
                      ],
                    ),
                  ),

                ],
              )

               */
            ],
          ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({Key key, this.page}) : super(key: key);
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => page))
          },
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.zero,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
          alignment: Alignment.centerRight,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}


