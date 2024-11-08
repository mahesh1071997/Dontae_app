import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Main background container with semi-transparent overlay
            Container(
              color: Colors.orange.withOpacity(0.7), // Transparent background color
            ),

            Image.asset(
              'images/art.jpg', // replace with your image path
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 220,
              left: 0,
              child: Container(
                height: 180,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(24.0), // Rounded corners
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Feed children in the India",
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 0,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          clipBehavior: Clip.none, // Allows avatars to overflow and overlap
                          children: [
                            // First Avatar
                            Positioned(
                              left: 0,
                              child: ClipOval(
                                child: Image.asset(
                                  'images/m1.jpg',
                                  height: 18+18,
                                ),
                              ),
                            ),
                            // Second Avatar (Overlaps with the first)
                            Positioned(
                              left: 20, // Offset to create overlap
                              child: ClipOval(
                                child: Image.asset(
                                  'images/m21.jpg',
                                  height: 18+18,
                                ),
                              ),
                            ),
                            // Third Avatar (Overlaps with the second)
                            Positioned(
                              left: 40, // Offset to create overlap
                              child: ClipOval(
                                child: Image.asset(
                                  'images/m22.jpeg',
                                  height: 18+18,
                                ),
                              ),
                            ),
                            Positioned(
                                left: 50 + 35, // Offset to create overlap
                                child: Text("12,568+ people donated",style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 220 + 130,
              left: 0,
              bottom: 0,
              child: Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),topLeft:Radius.circular(24.0) ), // Rounded corners
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "You modify donation will help to fund a range of dict family suport services,You modify donation will help to fund a range of dict family suport services,  Feed children in the India",
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
                        maxLines: 5,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Donate',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(300.0, 50.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 16,
              right: 16,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 200,
                child: Card(
                  color: Colors.white,
                  elevation: 4,

                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Donation value is  ${1000.round()}\$",
                        style: TextStyle(fontSize: 20),
                      ),
                      Slider(
                        value: 1000,
                        min: 0,
                        max: 2000,
                        divisions: 50,
                        label: "${1000.round()}\$",
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Goal", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text("\$20,000", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox.square(
                                dimension: 80,
                                child: CircularProgressIndicator(
                                  value: 0.8, // 60% progress
                                  strokeWidth: 8.0,
                                  color: Colors.green,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                              Text(
                                '80%',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Raised", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text("\$17,000", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
