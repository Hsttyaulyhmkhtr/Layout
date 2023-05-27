import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // Uncomment the line below to remove the debug banner
  // debugPaintSizeEnabled = false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Remove the debug banner
    home: BeautifulPage(),
  ));
}

class BeautifulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Mengatur latar belakang AppBar menjadi transparan
        elevation: 0, // Menghilangkan bayangan AppBar
        
      ),
      backgroundColor: Color.fromARGB(255, 69, 135, 234), // Warna latar belakang
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Beautiful Page!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Enjoy the beautiful layout!',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFeatureItem(context, 'assets/home.png', 'Home'),
                _buildFeatureItem(context, 'assets/explore.png', 'Explore'),
                _buildFeatureItem(context, 'assets/favorite.png', 'Favorite'),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background_image.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, String imagePath, String title) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$title Clicked')),
            );
          },
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    width: 48.0,
                    height: 48.0,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
