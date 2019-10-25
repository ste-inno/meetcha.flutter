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
                    onPressed: () {},
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
