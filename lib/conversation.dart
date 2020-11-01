import 'package:flutter/material.dart';

import 'User.dart';
import 'main.dart';

class ConversationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = new User(
        firstName: "Anna",
        lastName: "Alvarado",
        workPlace: "Guildhall School of Music & Drama",
        city: "London",
        country: "UK",
        avatar: "lib/assets/avatar.PNG"
    );

    User beverlyJones = new User(
      firstName: "Beverly",
      lastName: "Jones",
      avatar: "lib/assets/BeverlyJones.PNG"
    );

    User crystalFlores = new User(
      firstName: "Crystal",
      lastName: "Flores",
      avatar: "lib/assets/CrystalFlores.PNG"
    );

    User brittanyHarts = new User(
      firstName: "Brittany",
      lastName: "Hart",
      avatar: "lib/assets/BrittanyHart.PNG"
    );

    User deborahFlores = new User(
      firstName: "Deborah",
      lastName: "Flores",
      avatar: "lib/assets/DeborahFlores.PNG"
    );

    User harleyQuinn = new User(
      firstName: "Harley",
      lastName: "Quinn",
      avatar: "lib/assets/HarleyQuinn.PNG"
    );

    List<Pair<User, String>> users = [];
    users.add(new Pair(beverlyJones, "You know you're in love when"));
    users.add(new Pair(crystalFlores, "Hey you! What's up!"));
    users.add(new Pair(brittanyHarts, "When i'm good, I'm very good"));
    users.add(new Pair(deborahFlores, "Hey you! What's up!"));
    users.add(new Pair(harleyQuinn, "I am a dancer. I know you're"));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              ApplicationBar(
                page: MyHomePage(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Conversation",
                    textScaleFactor: 2,
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.search_rounded, color: Colors.white,),
                              ),
                              SizedBox(width: 20),
                              Text("Search friend",  style: Theme.of(context).textTheme.headline2,)
                            ]
                        ),
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(users[index].left.avatar)
                                    )
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      users[index].left.firstName + " " + users[index].left.lastName,
                                      style: Theme.of(context).textTheme.headline1,
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        users[index].right,
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                  }
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Colors.pinkAccent,
                  child: Icon(Icons.create),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
