import 'package:flutter/material.dart';
import 'package:my_profile/Theme.dart';
import 'size.dart';
import 'package:google_fonts/google_fonts.dart';

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
                              color: ThemeApp.textColorPrimary,
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
                // Technologies I Work With
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 280,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            "Technologies I Work With",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                              color: ThemeApp.textColorPrimary,
                            ),
                          ),
                          const SizedBox(height: 1),
                          Container(
                            width: 820,
                            height: 180,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(
                                color: ThemeApp.secondaryBackground,
                                width: 1,
                              ),
                            ),
                            child: Wrap(
                              spacing: 5,
                              runSpacing: 9,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.center,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    "https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png",
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
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
                // Row Work Experience
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 450,
                    width: SizeContainer.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Work Experience",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                              color: ThemeApp.textColorPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    [
                                          // العمود الأول (النقطة والخط)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 12.0,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                        shape: BoxShape.circle,
                                                      ),
                                                ),
                                                Container(
                                                  width: 2,
                                                  height: 100,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // العمود الثاني (النصوص)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 350,
                                                height: 100,
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'AUG 2023 - Present',
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Arab Sea Information System',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Database Program',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          // العمود الثالث (الصورة)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  "https://res.cloudinary.com/drzpjbr87/image/upload/v1755690658/Screenshot_2025-08-20_144748_ybtjun.jpg",
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]
                                        .map(
                                          (widget) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25,
                                            ),
                                            child: widget,
                                          ),
                                        )
                                        .toList(),
                              ),

                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    [
                                          // العمود الأول (النقطة والخط)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 12.0,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                        shape: BoxShape.circle,
                                                      ),
                                                ),
                                                Container(
                                                  width: 2,
                                                  height: 100,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // العمود الثاني (النصوص)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 350,
                                                height: 100,
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'AUG 2023 - Present',
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Arab Sea Information System',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Database Program',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          // العمود الثالث (الصورة)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  "https://res.cloudinary.com/drzpjbr87/image/upload/v1755690658/Screenshot_2025-08-20_144748_ybtjun.jpg",
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]
                                        .map(
                                          (widget) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25,
                                            ),
                                            child: widget,
                                          ),
                                        )
                                        .toList(),
                              ),

                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    [
                                          // العمود الأول (النقطة والخط)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 12.0,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                        shape: BoxShape.circle,
                                                      ),
                                                ),
                                                Container(
                                                  width: 2,
                                                  height: 100,
                                                  decoration:
                                                      const BoxDecoration(
                                                        color:
                                                            ThemeApp.shapeColor,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // العمود الثاني (النصوص)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 350,
                                                height: 100,
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'AUG 2023 - Present',
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Arab Sea Information System',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Database Program',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          // العمود الثالث (الصورة)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  "https://res.cloudinary.com/drzpjbr87/image/upload/v1755690658/Screenshot_2025-08-20_144748_ybtjun.jpg",
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]
                                        .map(
                                          (widget) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25,
                                            ),
                                            child: widget,
                                          ),
                                        )
                                        .toList(),
                              ),
                            ],
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
                // Row Professional Certificates
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 695,
                    width: SizeContainer.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text(
                            "Professional Certificates",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                              color: ThemeApp.textColorPrimary,
                            ),
                          ),

                          // Row One
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                width: ConCert.width,
                                height: ConCert.height,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: ThemeApp.shapeColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                width: ConCert.width,
                                height: ConCert.height,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: ThemeApp.shapeColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Row Two
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                width: ConCert.width,
                                height: ConCert.height,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: ThemeApp.shapeColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                width: ConCert.width,
                                height: ConCert.height,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: ThemeApp.shapeColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // ========================================================================================
              Row(
                // Row Contact Me
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: SizeContainer.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Contact Me",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                              color: ThemeApp.textColorPrimary,
                            ),
                          ),

                          Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: ConComm.width,
                                    height: ConComm.height,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: ThemeApp.shapeColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: ConComm.width,
                                    height: ConComm.height,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: ThemeApp.shapeColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: ConComm.width,
                                    height: ConComm.height,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: ThemeApp.shapeColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Row Two
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: ConComm.width,
                                    height: ConComm.height,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: ThemeApp.shapeColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: ConComm.width,
                                    height: ConComm.height,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: ThemeApp.shapeColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Text("© 2025 Mohammed AL Manarah. All rights reserved."),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
