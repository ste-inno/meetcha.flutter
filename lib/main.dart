import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class SecondRoute extends StatefulWidget {
  SecondRoute({Key key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home", textAlign: TextAlign.center, style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: new IconButton(icon: new Icon(Icons.menu, color: Colors.black), onPressed: () {
          Navigator.pop(context);
        },),
        actions: <Widget>[ new IconButton(icon: new Icon(Icons.favorite_border, color: Colors.black),) ],
      ),
      body: 
        PageView.builder(
          itemBuilder: (context, position) {
            return FractionallySizedBox(widthFactor: 0.8, heightFactor: 0.8, child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter, 
                  colors: [ 
                    Color.fromARGB(255, 0, 173, 238),
                    Color.fromARGB(255, 38, 210, 238)
                   ]), 
                borderRadius: new BorderRadius.circular(12.0),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12,),
                  FractionallySizedBox(widthFactor: 0.6, child: Image.asset("assets/profile_title.png",)),
                  SizedBox(height: 8,),
                  Text("Toronto", style: 
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 50)
                  ),
                  SizedBox(height: 8,),
                  FractionallySizedBox(
                    widthFactor: 0.9, 
                    child: 
                      new LinearProgressIndicator(
                        backgroundColor: Colors.white, 
                        value: 0.5,
                        valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 255, 214, 10)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(height: 50, width: 80 , child: RaisedButton( 
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)
                    ), child: Icon(Icons.fast_rewind, color: Colors.white,) ),),
                    SizedBox(width: 8,),
                    SizedBox(height: 50, width: 80 , child: RaisedButton( 
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)
                    ), child: Icon(Icons.play_arrow, color: Colors.white,) ),),
                    SizedBox(width: 8,),
                    SizedBox(height: 50, width: 80 , child: RaisedButton( 
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)
                    ), child: Icon(Icons.fast_forward, color: Colors.white,) ),),
                  ],
                  ),
                  SizedBox(height: 8,),
                  Text("Listen to the voice profile", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),),
                  Expanded(child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(height: 80, width: 80 , child: RaisedButton( 
                      color: Colors.white,
                      shape: CircleBorder(
                        side: BorderSide(width: 2, color: Color.fromARGB(255, 0, 173, 238), style: BorderStyle.solid)
                      ), 
                      child: Icon(Icons.favorite, color: Colors.red, size: 50,) ),),
                      Text("Like", style: TextStyle(fontSize: 20, color: Colors.white, ),)
                  ],),
                  ),)
              ],),
              ),
            );
          },
          scrollDirection: Axis.vertical,
        )
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 210, 4),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 32,),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: Column(children: <Widget>[
              Image.asset("assets/main_logo.png"),
              Image.asset("assets/main_img.png"),
            ],),
            ),
            Spacer(),
            Column(children: <Widget>[
              FractionallySizedBox(
                widthFactor: 0.8,
                child: TextField(decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '+1 Mobile Number'
                  ),
                ),
              ),
              SizedBox(height: 8,),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password'
                  ),
                ),
              ),
              SizedBox(height: 16,),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: new SizedBox(
                  height: 50,
                  child: RaisedButton(
                    color: Color.fromARGB(255, 38, 210, 238),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Color.fromARGB(100, 104, 112, 137))
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => SecondRoute())
                      );
                    },
                    textColor: Colors.white,
                    child: const Text("Log In", 
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ),
                ),
              ),
              SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: new SizedBox(
                  height: 50,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Color.fromARGB(255, 38, 210, 238))
                    ),
                    onPressed: () {},
                    textColor: Color.fromARGB(255, 38, 210, 238),
                    child: const Text("Create Account", 
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text("You must be 18 years old to use this app",
                style: TextStyle(
                  color: Colors.white,
                ),),
              FlatButton(
                textColor: Color.fromARGB(255, 38, 210, 238),
                onPressed: () {},
                child: Text(
                  "Forgot your password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],),
            
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
