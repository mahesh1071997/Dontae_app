import 'package:donate/ui/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Background container with orange color and rounded bottom corners
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48.0),
                      bottomRight: Radius.circular(48.0),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.25, // Adjust height as needed
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Hello!',
                    style: TextStyle(
                      fontSize: 128.0,
                      color: Colors.white.withOpacity(0.2), // Transparent white color
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Icons positioned at the top left and right
                const Positioned(
                  top: 40.0,
                  left: 16.0,
                  child: Icon(
                    Icons.menu, // Replace with desired icon
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  top: 40.0,
                  right: 16.0,
                  child: Icon(
                    Icons.notifications, // Notification icon
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                // ListTile widget positioned below the orange container
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.1, // Adjust to align below container
                  left: 16.0,
                  right: 16.0,
                  child:  ListTile(
                    tileColor: Colors.white,
                    leading: ClipOval(
                      child: Image.asset(
                        'images/m1.jpg',
                        height: 18+18,
                      ),
                    ),
                    title: Text(
                      'Good Morning!',
                      style: TextStyle(
                        color: Colors.white, // Transparent white color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Mr. Mahesh D',
                      style: TextStyle(
                        color: Colors.white, // Transparent white color
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2 + 10, // Adjust to align below container
                  left: 24.0,
                  right: 24.0,
                  child: SearchTextField(),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Need to help',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {
                      // Navigator.push(context, );
                      Navigator. push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => DetailScreen(),
                        ),
                      );

                  }, child: const Text("View All"))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 364,
              width: MediaQuery.sizeOf(context).width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ListViewItem(
                    title: "Donate for hungry people",
                    imageUrl: "images/pdo.jpg",
                    progress: 0.76,
                  ),
                  ListViewItem(
                    title: "Donate for hungry people",
                    imageUrl:"images/pdo.jpg",
                    progress: 0.76,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {}, child: const Text("View All"))
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 180,
              width: MediaQuery.sizeOf(context).width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ListItem(
                    title: "Donate",
                    imageUrl: "images/mom.jpg",
                  ),
                  ListItem(
                    title: "Donate",
                    imageUrl: "images/pboy.jpeg",
                  ),ListItem(
                    title: "Donate",
                    imageUrl: "images/pex.jpeg",
                  ),ListItem(
                    title: "Donate",
                    imageUrl: "images/mom.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String imageUrl; // URL or asset path for the image
  final String title; // Title text for the item

  const ListItem({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 180,
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                imageUrl, // replace with your image path
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                margin: EdgeInsets.all(10), // Adds margin around the text
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: Text(
                  '1 Label',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}


class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.0), // Round corners for the entire field
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          hintText: 'Search here ...',
          hintStyle: TextStyle(color: Colors.grey[400]),
          border: InputBorder.none,
          suffixIcon: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle, // Round background for the icon
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white), // White search icon
              onPressed: () {
                // Define search action
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final String imageUrl; // URL or asset path for the image
  final String title; // Title text for the item
  final double progress; // Progress percentage (0.0 to 1.0)

  const  ListViewItem({
    required this.imageUrl,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Card(
        elevation: 4.0,
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
              child: Image.asset(
                imageUrl, // replace with your image path
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Image at the top
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8.0),
            //   child: Image.network(
            //     imageUrl, // Display image from URL or assets
            //     height: 150.0,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const SizedBox(height: 12.0),
             SizedBox(
              height: 50,
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
                        child: Text("12,568+ people donated")),
                  ],
                ),
              ),
            ),
            // Title text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: LinearProgressIndicator(
                value: progress, // Progress value from 0.0 to 1.0
                backgroundColor: Colors.grey[300],
                color: Colors.blue, // Color of the progress indicator
              ),
            ),

            // Linear Progress Indicator with percentage label
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Display percentage text
                  const Text(
                    'Relised', // Display as percentage
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),

                  Text(
                    '${(progress * 100).toStringAsFixed(0)}%', // Display as percentage
                    style: const TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
