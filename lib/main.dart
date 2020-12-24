import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End Drawer "),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Text("Hello World Travel",style: TextStyle(
               fontSize: 26.0,
              color: Colors.pinkAccent,
            ),
            ),
            Text("Discover The World",
              style: TextStyle(color: Colors.black,fontSize: 20.0),
            ),
            Image.asset('images/asad.jpg'),
            RaisedButton(

              child: Text("Contact Us"),
              onPressed: (){
                ContactUs(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void ContactUs(BuildContext context){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Asad Ullah"),
      content: Text("au4098@gmail.com" ),
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(), child: Text("Close"),),
        FlatButton(
          onPressed: () => Navigator.of(context).pop(), child: Text("Ok"),),
      ],
    );
  } ,);
}