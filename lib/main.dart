import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Botão Gostei'),
          backgroundColor: Colors.redAccent,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botão Gostei',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool liked = false;
  bool disliked = false;

  void click(bool like){
    setState(() {
      if(like == true){
        liked = !liked;
        disliked = false;
      } else {
        disliked = !disliked;
        liked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 5),
                child: FlatButton.icon(
                  label: Text("Gostei"),
                  icon: Icon(Icons.thumb_up),
                  color: liked ? Colors.blue : Colors.grey,
                  onPressed: (){
                    click(true);
                  },
                ),
            )
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 5),
                child: FlatButton.icon(
                  label: Text("Não Gostei"),
                  icon: Icon(Icons.thumb_down),
                  color: liked ? Colors.grey : Colors.blue,
                  onPressed: (){
                    click(true);
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}
