

import 'package:flutter/material.dart';

class Internetui extends StatefulWidget {
  @override
  _InternetuiState createState() => _InternetuiState();
}

class _InternetuiState extends State<Internetui> {
  List<String> smoke = [
    "https://images.pexels.com/photos/929677/pexels-photo-929677.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4722576/pexels-photo-4722576.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];

  List<String> abstracts = [
    "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/262367/pexels-photo-262367.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2230796/pexels-photo-2230796.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];

  List<String> apple = [
    "https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4526398/pexels-photo-4526398.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3568520/pexels-photo-3568520.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];

  List<String> toshow = [
    "https://images.pexels.com/photos/1970139/pexels-photo-1970139.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/1587014/pexels-photo-1587014.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2740954/pexels-photo-2740954.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];

  void createlist(String kword) {
    if (kword == "smoke") {
      toshow = [];
      setState(() {
        for (var pics in smoke) {
          toshow.add(pics);
        }
      });
    } else if (kword == "abstracts") {
      toshow = [];
      setState(() {
        for (var iuu in abstracts) {
          toshow.add(iuu);
        }
      });
    } else if (kword == "apple") {
      toshow = [];
      setState(() {
        for (var srcs in apple) {
          toshow.add(srcs);
        }
      });
    }
  }

  Widget cards(String src) {
    return Card(
      elevation: 5.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(src,loadingBuilder: (context,child,progress){
            return progress == null ?child :LinearProgressIndicator();
          }
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.message,
        ),
        color: Colors.white,
        hoverColor: Colors.red,
        tooltip: "Messaging",
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        title: Text(
          "Wallpapers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Fahad Mohammad"),
              accountEmail: Text("me@icloud.com"),
              onDetailsPressed: () {},
              currentAccountPicture: CircleAvatar(
                child: Text("P"),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.mail),
              title: Text("Mail"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                        onPressed: () => createlist("smoke"),
                        child: Text("Smoke"))),
                Expanded(
                    child: FlatButton(
                        onPressed: () => createlist("abstracts"),
                        child: Text("Abstract"))),
                Expanded(
                    child: FlatButton(
                        onPressed: () => createlist("apple"),
                        child: Text("Apple"))),
              ],
            ),
            Column(
              children: <Widget>[
                cards(toshow[0]),
                cards(toshow[1]),
                cards(toshow[2]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
