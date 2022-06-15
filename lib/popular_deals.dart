import 'package:flutter/material.dart';
import 'package:headphone_ui/model/popular.dart';

class ERPopularDealsList extends StatefulWidget {
  const ERPopularDealsList({Key? key}) : super(key: key);

  @override
  State<ERPopularDealsList> createState() => _ERPopularDealsListState();
}

class _ERPopularDealsListState extends State<ERPopularDealsList> {
  final List<Popular> popularDeals = popularLists;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Color.fromARGB(255, 245, 151, 209),
          ),
        ],
      ),
      child: ListView.builder(
        itemCount: popularDeals.length,
        itemBuilder: (context, index) {
          final popular = popularDeals[index];
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        // color: popular.color,
                        image: DecorationImage(
                            image: AssetImage("assets/${popular.image}"),
                            fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popular.title,
                          style: const TextStyle(
                            color: Colors.purple,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: popular.color,
                              radius: 4,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              popular.colorText,
                              style: const TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 55,
                      color: Color.fromARGB(255, 255, 0, 157),
                      child: Text(
                        "\$${popular.price}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.pink.withOpacity(0.1)),
            ],
          );
        },
      ),
    );
  }
}
