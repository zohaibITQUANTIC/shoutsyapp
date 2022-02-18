import 'package:demo/dataclass/featured_shouter_data.dart';
import 'package:demo/widget/featured_shouter_slide.dart';
import 'package:demo/widget/shoutsy_tool_slide.dart';
import 'package:demo/widget/text_boxes_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.roboto().fontFamily
          //fontFamily: GoogleFonts.loto().fontFamily,
          // hintColor: const Color(0xFF64748B),
          // textTheme: const TextTheme(
          //   headline1: TextStyle(
          //       color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          //   headline2: TextStyle(
          //       color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          //   headline3: TextStyle(
          //       color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          //   bodyText1: TextStyle(
          //     color: Colors.black,
          //     fontSize: 14,
          //   ),
          //   bodyText2: TextStyle(color: Color(0xFF64748B), fontSize: 14),
          //   button: TextStyle(
          //       color: Color(0xFF5478E2),
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600),
          // ),
          ),
      title: 'Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> tabOption = [
    {'title': 'Overview', 'select': true},
    {'title': 'Profile', 'select': false},
    {'title': 'Workspaces', 'select': false},
    {'title': 'Campaigns', 'select': false},
  ];

  int selectedOptionIndex = 0;
  List<FeaturedShouterData> fshouterList = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    fetchFeaturedShouter();
  }

  fetchFeaturedShouter() async {
    fshouterList = featuredShouterList;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF00C9FF).withOpacity(0.5),
                      Colors.white.withOpacity(0),
                      // Color(0xFF00C9FF).withOpacity(0.1),
                      Color(0xFF00C9FF).withOpacity(0.7),
                      Colors.white.withOpacity(0.4),
                    ],
                    //  transform: GradientRotation(100 / 3),

                    // tileMode: TileMode.clamp
                  ),
                  //  gradient: ,
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/bgImage.jpg',
                      ),
                      // colorFilter:
                      //     ColorFilter.mode(Colors.blue, BlendMode.lighten),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(children: [
                  // Image.asset(
                  //   'images/bgImage.jpg',
                  //   height: 319,
                  //   width: MediaQuery.of(context).size.width,
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFF00C9FF).withOpacity(0.8),
                          Colors.transparent,
                          //   Colors.transparent,
                          // Color(0xFF00C9FF).withOpacity(0.1),
                          Color(0xFF00C9FF).withOpacity(0.8),
                        ],
                        //  transform: GradientRotation(100 / 3),

                        // tileMode: TileMode.clamp
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset('images/shop-icon-bottom.png'),
                                const SizedBox(
                                  height: 2,
                                ),
                                Image.asset('images/shop-icon.png'),
                                Transform.translate(
                                    offset: const Offset(14, -32),
                                    child: Image.asset('images/iscart.png')),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset('images/menu-icon.png')
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          'images/logo.png',
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Transform.translate(
                offset: Offset(0, -70),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Hello ',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Nike',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'let\'s find influencers to shout your brand out and grow!',
                        style:
                            TextStyle(color: Color(0xFFB5B5B5), fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int index = 0;
                                  index < tabOption.length;
                                  index++)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (index == 2)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Container(
                                          width: 60,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Color(0xFF00E2C2)),
                                          child: Center(
                                            child: Text(
                                              'New!',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          tabOption[selectedOptionIndex]
                                              ['select'] = false;
                                          selectedOptionIndex = index;
                                          tabOption[selectedOptionIndex]
                                              ['select'] = true;
                                        });
                                      },
                                      child: Text(
                                        tabOption[index]['title'],
                                        style: TextStyle(
                                            color: tabOption[index]['select']
                                                ? Colors.black
                                                : Colors.grey.shade600,
                                            fontSize: 16,
                                            fontWeight: tabOption[index]
                                                    ['select']
                                                ? FontWeight.bold
                                                : FontWeight.w400),
                                      ),
                                    )
                                  ],
                                )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 30,
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  spreadRadius: 4,
                                  blurRadius: 11,
                                  offset: Offset(10, 20),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/wallet.png',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '\$23,345.06',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Wallet Balance',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('images/megahorn.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '450',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Shoutsy Coins',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Featured Shouters',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: fshouterList
                                    .map((e) => FeatureShouterSlide(
                                        featuredShouterItem: e))
                                    .toList(),
                              ),
                            ),
                            // FeatureShouterSlide(),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Shoutsy Tools',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ShoutsySlide(),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Text Boxes',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextBoxesForm()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
