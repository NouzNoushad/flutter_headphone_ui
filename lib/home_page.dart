import 'package:flutter/material.dart';
import 'package:headphone_ui/header.dart';
import 'package:headphone_ui/popular_deals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back, color: Colors.purple),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "ER-",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "PHONE",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications, color: Colors.purple,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ERHeaderUI(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Text(
                  "Popular Deals",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            const ERPopularDealsList(),
            const SizedBox(height: 5,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white, size: 22),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.white, size: 22),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white, size: 22),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: 22),
            label: "",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 255, 0, 157),
        child: const Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
