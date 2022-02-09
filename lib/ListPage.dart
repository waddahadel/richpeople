import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dollarionairs Club Members', style: GoogleFonts.lobster(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
          ),),
        ),
      ),
    );
  }
}


