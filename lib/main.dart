import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation Route',
      theme: new ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: new HalamanSatu(),
      routes: <String, WidgetBuilder>{
        '/HalamanSatu' : (BuildContext context) => new HalamanSatu(),
        '/HalamanDua' : (BuildContext context) => new HalamanDua(),
      },
    );
  }
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Halaman Satu"),
        ),
      ),

      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0,),
          onPressed: ()=> Navigator.pushNamed(context, '/HalamanDua'),
        ), 
      ),
    );
  }
}


class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Halaman Dua"),
        ),
      ),

      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.local_movies, size: 50.0,),
          onPressed: ()=> Navigator.pushNamed(context, '/HalamanSatu'),
        ), 
      ),
    );
  }
}