import 'package:flutter/material.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 230,
            padding: const EdgeInsets.all(10),
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 200,
                    width: 140,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/off.png",
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: 100,
                          top: 8,
                          child: Icon(
                            Icons.favorite_border,
                            color: const Color.fromARGB(255, 239, 239, 239),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "Dominos pizza",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.2",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(10k+)",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(25min+)",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "(Pizzas, Italian, Pastas\nPimple Saudagar)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 99, 99),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "FREE DELIVERY",
                          style: TextStyle(
                              color: Color.fromARGB(255, 79, 146, 55),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                const Icon(Icons.more_vert_rounded)
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 2);
  }
}
