import 'package:flutter/material.dart';
import 'package:my_profile/Theme.dart';
import 'size.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logo.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:card_animation_hover/card_animation_hover.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LogoCard extends StatefulWidget {
  final dynamic logo; // اذا عندك كلاس مخصوص اسمه Logo استبدل dynamic بـ Logo
  final int index;

  const LogoCard({super.key, required this.logo, required this.index});

  @override
  State<LogoCard> createState() => _LogoCardState();
}

class _LogoCardState extends State<LogoCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.blue.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : [],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedScale(
                  scale: isHovered ? 1.2 : 1.0,
                  duration: const Duration(milliseconds: 250),
                  child: Image.network(
                    widget.logo.imageUrl, // لازم logo يكون له imageUrl
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.logo.name, // ولازم logo.name يكون موجود
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
        .animate()
        .fadeIn(duration: 600.ms, delay: (widget.index * 100).ms)
        .scale(begin: const Offset(0.8, 0.8), end: const Offset(1, 1))
        .slideY(begin: 0.3, end: 0);
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Logo> logos = [
    Logo(
      name: 'AWS',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/AWS_zhzlxe.png',
    ),
    Logo(
      name: 'Flutter',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/Flutter_zbofhr.png',
    ),
    Logo(
      name: 'Java',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/java_hrwvqt.png',
    ),
    Logo(
      name: 'VS Code',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681319/VS_Code_i0rf4y.png',
    ),
    Logo(
      name: 'Spring Boot',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681319/Spring_boot_gbjnwk.png',
    ),

    Logo(
      name: 'SQL Server',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681319/sql_server_fxpukw.png',
    ),
    Logo(
      name: 'Python',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/python_u57mza.png',
    ),
    Logo(
      name: 'MySQL',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/mysql_zcs8tc.png',
    ),
    Logo(
      name: 'Postman',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/Postman_ljor1n.png',
    ),
    Logo(
      name: 'PostgreSQL',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/Postgresql_rumdui.png',
    ),
    Logo(
      name: 'Oracle',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/oracle_j1fboc.png',
    ),
    Logo(
      name: 'Mongodb',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/mongodb_p8oj0r.png',
    ),
    Logo(
      name: 'JS',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681318/js_v5syzx.png',
    ),
    Logo(
      name: 'IJ',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/IJ_yf9acr.jpg',
    ),
    Logo(
      name: 'CSS',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/CSS_qnuvru.png',
    ),
    Logo(
      name: 'GitHub',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/github_sqv1ik.png',
    ),
    Logo(
      name: 'HTML',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/html_n5lrys.png',
    ),
    Logo(
      name: 'Firebase',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/firebase_emybve.png',
    ),
    Logo(
      name: 'FlutterFlow',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/FlutterFlow_ddolyf.png',
    ),
    Logo(
      name: 'Git',
      imageUrl:
          'https://res.cloudinary.com/drzpjbr87/image/upload/v1755681317/git_yutbmq.png',
    ),

    // Logo(name: '', imageUrl: ''),
    // Add Any Logo Here
  ];

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
                    height: 450,
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
                      padding: const EdgeInsets.all(16),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // يخلي النص بمحاذاة اليسار
                        children: [
                          Text(
                            "Technologies I Work With",
                            style: TextStyle(
                              fontSize: SizeText.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: logos.asMap().entries.map((entry) {
                                final index = entry.key;
                                final logo = entry.value;

                                return LogoCard(logo: logo, index: index);
                              }).toList(),
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
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
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

                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 400,
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

                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 400,
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
                                                      'OCT 2022 - APR 2023',
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
                                                      'King Salman Specialist Hospital',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Technical Support',
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

                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  "https://res.cloudinary.com/drzpjbr87/image/upload/v1755776009/Hail_Health_Cluster_v1oury.jpg",
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
                                                width: 400,
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
                                                      'MAY 2021 - DEC 2021',
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
                                                      'Hail Health Cluster',
                                                      style: GoogleFonts.inter(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeApp
                                                            .textColorPrimary,
                                                      ),
                                                    ),
                                                    Text(
                                                      'COOP Training',
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
                                                  "https://res.cloudinary.com/drzpjbr87/image/upload/v1755776009/Hail_Health_Cluster_v1oury.jpg",
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
                                margin: EdgeInsets.symmetric(
                                  horizontal: 45,
                                  vertical: 10,
                                ),
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://res.cloudinary.com/drzpjbr87/image/upload/v1755768178/AWS_Developer_iutqg7.png",
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),

                                    SizedBox(height: 8),
                                    Text(
                                      'AWS Certified Developer',
                                      style: TextStyle(
                                        color: ThemeApp.textColorPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '07 December 2024',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    Text(
                                      'View certificate',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ThemeApp.viewCertification,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 10,
                                ),
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://res.cloudinary.com/drzpjbr87/image/upload/v1755768178/AWS_Solutions_Architect_awa7ke.png",
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'AWS Certified Solutions Architec',
                                      style: TextStyle(
                                        color: ThemeApp.textColorPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '09 November 2024',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    Text(
                                      'View certificate',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ThemeApp.viewCertification,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Row Two
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 45,
                                  vertical: 10,
                                ),
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://res.cloudinary.com/drzpjbr87/image/upload/v1755768178/ORACLE_Database_txfd2z.png",
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),

                                    SizedBox(height: 8),
                                    Text(
                                      'Oracle Database SQL',
                                      style: TextStyle(
                                        color: ThemeApp.textColorPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '23 March 2023',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    Text(
                                      'View certificate',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ThemeApp.viewCertification,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 10,
                                ),
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://res.cloudinary.com/drzpjbr87/image/upload/v1755768178/itil_umgdv7.png",
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),

                                    SizedBox(height: 8),
                                    Text(
                                      'ITIL 4 Foundation',
                                      style: TextStyle(
                                        color: ThemeApp.textColorPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '22 April 2023',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    Text(
                                      'View certificate',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: ThemeApp.viewCertification,
                                      ),
                                    ),
                                  ],
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
                    height: 285,
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
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 800,
                            height: 200,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 250,
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.phone_rounded, size: 30),
                                          Text("+966503369271"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 250,
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.add_road, size: 30),
                                          Text("mohammed-almanarh"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 250,
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.location_pin, size: 30),
                                          Text("Riyadh"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 290,
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.email_sharp, size: 30),
                                          Text(
                                            "mohammed-alshammari0@hotmail.com",
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 290,
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.phone_rounded, size: 30),
                                          Text("@iMOOD07"),
                                        ],
                                      ),
                                    ),
                                  ],
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
