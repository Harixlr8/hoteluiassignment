import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelHome(),
    ),
  );
}

class HotelHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Paradise Hotel",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(200, 125),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  "Enter you City",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  width: 275,
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Boudha,Kathmandu',
                        border: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.bed_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'Hotel',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 223, 223, 111),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.kitchen_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Restaurant',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.coffee,
                            color: Colors.white,
                          ),
                          Text(
                            'Coffee',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Card(
                child: Container(
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/rooms.jpg'),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        height: 200,
                      ),
                      const Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          'Awesome rooms near Boudha',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Positioned(
                        top: 235,
                        left: 10,
                        child: Text(
                          'Boudha,Kathmandu',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Positioned(
                          top: 260,
                          left: 7,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.green,
                              ),
                              Text(
                                '  (220 reviews)',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )),
                      const Positioned(
                        right: 10,
                        top: 6,
                        child: Icon(
                          Icons.star_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 112,
                          child: Container(
                        height: 30,
                        width: 35,
                        color: const Color.fromARGB(255, 228, 217, 217),
                        child: const Center(
                          child: Text(r' 40$ ',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                            
                          ),),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}









      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       bottom: PreferredSize(
      //         preferredSize: const Size(250, 100),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             children: const [
      //               Padding(
      //                 padding: EdgeInsets.all(8.0),
      //                 child: Text(
      //                   'Enter your City',
      //                   style: TextStyle(
      //                     fontSize: 30,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //               Padding(
      //                 padding: EdgeInsets.all(8.0),
      //                 child: SizedBox(
      //                   width: 300,
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       prefixIcon: Icon(Icons.search),
      //                       hintText: 'Boudha,Kathmandu',
      //                       border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.all(
      //                           Radius.circular(25),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       centerTitle: true,
      //       expandedHeight: 200,
      //       backgroundColor: const Color.fromARGB(255, 74, 205, 231),
      //       leading: const Icon(Icons.menu),
      //       actions: const [
      //         Center(
      //           child: FaIcon(FontAwesomeIcons.heart),
      //         ),
      //         SizedBox(
      //           width: 20,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),