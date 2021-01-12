import 'package:flutter/material.dart';
import './game_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.asset('assets/logo.png')),
          Text(
            "Impossible Tic Tac Toe!",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ButtonTheme(
              minWidth: 200,
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GamePage(widget.title)));
                },
                child: Text(
                  "New game!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
