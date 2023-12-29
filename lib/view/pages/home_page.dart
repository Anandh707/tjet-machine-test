import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec_jet_machine/view/widgets/category.widget.dart';
import 'package:tec_jet_machine/view/widgets/restaurents_list.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Color.fromARGB(255, 255, 76, 21),
                    size: 30,
                  ),
                  Text(
                    "office",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    CupertinoIcons.down_arrow,
                    color: Color.fromARGB(255, 87, 71, 67),
                    size: 20,
                  ),
                ],
              ),
              const Text(
                "38/A, 3rd Floor, 18th Main, 22nd...",
                style: TextStyle(
                    color: Color.fromARGB(255, 59, 59, 59),
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 36, 47)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Get 50% off on your\nfirst order.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor:
                                        const Color.fromARGB(255, 255, 114, 7),
                                    fixedSize: const Size(
                                      120,
                                      20,
                                    )),
                                onPressed: () {},
                                child: const Text(
                                  "Order Now",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 150,
                      top: 27,
                      child: Image.asset(
                        "assets/image 5.png",
                        width: 230,
                        height: 160,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Restaurent name or a dish",
                        hintStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.orange,
                        ),
                        suffixIcon: Icon(Icons.tune)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CategoryWidget(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Restaurant near you",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              const RestaurantList(),
            ],
          ),
        ),
      )),
    );
  }
}
