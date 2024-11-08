import 'package:donate/ui/home_screen.dart';
import 'package:flutter/material.dart';

class InstallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the image from assets, with height set to 50% of the screen height
          Image.asset(
            'images/art.jpg', // replace with your image path
            height: screenHeight * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 40.0),

          // Title Text aligned to the left
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
            child: Text(
              'We rise by\nlifting others',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'You have two hands. One to help your self, the second to help others',
             style:Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),

          // Start Button positioned at bottom left with a rounded top-right corner
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () {
               // Navigator.push(context, );
               Navigator. push<void>(
                 context,
                 MaterialPageRoute<void>(
                   builder: (BuildContext context) => HomeScreen(),
                 ),
               );
               },
              child: Text('Start',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(140, 80),
                // padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(48.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}