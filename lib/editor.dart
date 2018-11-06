import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/nextpage.dart';

class Editor extends StatelessWidget {
  static String tag = 'Flutter Installation';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/flutter.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '1. Start Android Studio.'
        '2. Open plugin preferences'
             '(Preferences>Plugins on macOS'
             ' File>Settings>Plugins on Windows & Linux).'
        '3. Select Browse repositories…, select the Flutter plug-in and click install.'
        '4. Click Yes when prompted to install the Dart plugin and restart when prompted.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.of(context).pop();
            //  Navigator.of(context).pushNamed("/a");
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new NewPage()));
          },
        ),
        title: Text("Configure Editor"),
      ),
      body: body,
    );
  }
}