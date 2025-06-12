import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/coffee_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(24.0),
              hoverColor: Colors.grey,
              onTap: () {},
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
      body: Padding(
        // find the best coffee for you
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 40),
            ),
            SizedBox(height: 25.0),
            // search bar
            TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.search),
                hintText: "Find your coffee...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [CoffeeTiles()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
