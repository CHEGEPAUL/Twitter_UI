import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Twitter Layout",
      theme: new ThemeData(
        primaryColor: Color.fromARGB(21, 32, 43, 1),
        accentColor: Colors.blueAccent[200],
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  child: new Text("L"),
                  radius: 15.0,
                ),
                margin: EdgeInsets.only(right:30.0),
              ),
              new Text("Home")
            ],
          ),
          elevation: 4.0,
        ),
        body: _buildbody(context)
      ),
    );
  }
}
    Widget _buildbody(context){
      return new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
              child: Scaffold(
              body: new ListView.builder(
                itemBuilder: (_, int index)=> _tweets[index],
                itemCount: _tweets.length,
                reverse: false,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: null,child: Icon(Icons.edit)),
              )),
              new Container(
                decoration: 
                new BoxDecoration(color: Theme.of(context).cardColor),
                child: _buildTabsBar(context),
              )
          ],
        )
      );
    }
      Widget _buildTabsBar(context){
        return Container(
        height: 60,
        color: Color.fromARGB(21, 32, 43, 1),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.home,color: Theme.of(context).accentColor),
            Icon(Icons.search, color: Colors.grey[100]),
            Icon(Icons.notifications_none ,color: Colors.grey[100]),
            Icon(Icons.mail_outline, color: Colors.grey[100])

          ],
        ),
        );
      }
    
  


