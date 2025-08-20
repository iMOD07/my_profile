import 'package:flutter/material.dart';
import 'package:my_profile/Theme.dart';
import 'size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeApp.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: ThemeApp.appBarColor,
        title: Text(
          "Mohammed AL Manarh",
          style: TextStyle(color: ThemeApp.textColorPrimary),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // First Row
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // Row Photo
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://res.cloudinary.com/drzpjbr87/image/upload/v1754992822/my-photo-in-web_dyflik.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                // Row ENG
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SOFTWARE ENGINEER",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // ========================================================================================
              // ========================================================================================
              Row(
                // Row About Me
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: SizeContainer.height,
                    width: SizeContainer.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "About Me",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "Software Engineer A Specialist in Database Management and Programming, currently working"
                            "As a Database Programmer at Arab Sea Information Systems I have over two years of experience in database management and programming.",
                            style: TextStyle(
                              fontSize: SizeText.secondary,
                              color: ThemeApp.textColorPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // ========================================================================================
              // ========================================================================================
              Row(
                // Row Technologies I Work With
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: SizeContainer.height,
                    width: SizeContainer.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Technologies I Work With",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1),
                          Wrap(
                            spacing: 5,
                            runSpacing: 9,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.center,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            //children: [
                            //ClipRRect(
                            //borderRadius: BorderRadius.circular(8),
                            //child: Image
                            //'assets/images/AWS_-_01.png',
                            //width: 75,
                            //height: 75,
                            //fit: BoxFit.contain,
                            //),
                          ),
                        ],
                      ),
                      //],
                    ),
                  ),
                  //),
                ],
              ),
              // ========================================================================================
              // ========================================================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.blue),
                  SizedBox(width: 8),
                  Text("Row 4"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.purple),
                  SizedBox(width: 8),
                  Text("Row 5"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
