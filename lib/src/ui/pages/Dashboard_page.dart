import 'package:flutter/material.dart';
import 'package:food_street_533/src/ui/pages/Review_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
            ),
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.refresh_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rating : ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Reviews : 24",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 0.5,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Service", style: Theme.of(context).textTheme.headline2,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Text("5.0", style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Atmosphere", style: Theme.of(context).textTheme.headline2),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Text("5.0", style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Menu", style: Theme.of(context).textTheme.headline2),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Text("4.9", style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Food", style: Theme.of(context).textTheme.headline2),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Text("5.0", style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text("Reviews", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 25, fontWeight: FontWeight.bold)),
              // ListView.builder(
              //   itemCount: 3,
              //   itemBuilder: (context, index) {
              //     return Column(
              //       children: [
              //         ListTile(
              //           title: Text("Zain Khan"),
              //           subtitle: Text(DateTime.now().toIso8601String()),
              //           trailing: Row(
              //             children: [
              //               Icon(Icons.star, color: Colors.yellow,),
              //               Text("5.0")
              //             ],
              //           ),
              //           onTap: () {
              //             Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewPage(),));
              //           },
              //         ),
              //       ],
              //     );
              //   },
              // )
            ],
          )
        ],
      ),
    );
  }
}
