import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ListPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // is not restarted.
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body:
        Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Image(image: AssetImage('assets/crown.jpg'),width: 300,height: 300,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                style: TextStyle(color: Colors.black38),
                keyboardType: TextInputType.text,
                autofocus: false,

                decoration: InputDecoration(
                  labelText: 'Enter your name ',
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black38, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
            ),
          ),

                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: OutlineButton(onPressed: ()  {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
                    },
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: Text('Join The Club',style: GoogleFonts.dancingScript(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
