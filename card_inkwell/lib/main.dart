import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardExample(),
    );
  }
}

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          color: Colors.red,

          // The elevation determines shade.
          elevation: 10.0,
          child: Container(
            height: 100.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Card 1'),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 + Inkwell'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.elliptical(40.0, 80.0),
            ),
          ),
          child: Container(
            height: 100.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Card 3 + Border radius'),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        'assets/flutter.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Card 4',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color: Colors.teal),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text('On'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Off'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
