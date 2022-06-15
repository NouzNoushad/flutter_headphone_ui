import 'package:flutter/material.dart';

class ERHeaderUI extends StatefulWidget {
  const ERHeaderUI({Key? key}) : super(key: key);

  @override
  State<ERHeaderUI> createState() => _ERHeaderUIState();
}

class _ERHeaderUIState extends State<ERHeaderUI> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 185,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 255, 0, 157),
                      Colors.purple,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 22,
                        width: 60,
                        color: Colors.purple.withOpacity(0.4),
                        child: const Text(
                          "Best Seller",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ),
                      const Text(
                        "Your beats for halal \nmusic everyday!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "24.90\$",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                child: Container(
                  height: 185,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/purple_head.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
