import 'package:demo/dataclass/featured_shouter_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureShouterSlide extends StatelessWidget {
  final FeaturedShouterData featuredShouterItem;
  const FeatureShouterSlide({Key? key, required this.featuredShouterItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<Map> slider = [
    //   {
    //     'bgImage': 'images/bgslide1.png',
    //     'topimageIcon': 'images/bgslide1.png',
    //     'title': 'Island Boys',
    //     'shortDes': 'Check out their profile and send them custom offers!',
    //   },
    //   {
    //     'bgImage': 'images/bgslide2.png',
    //     'topimageIcon': 'images/bgslide5.png',
    //     'title': 'Island Boys',
    //     'shortDes': 'Check out their profile and send them custom offers!',
    //   },
    //   {
    //     'bgImage': 'images/bgslide3.png',
    //     'topimageIcon': 'images/bgslide5.png',
    //     'title': 'Island Boys',
    //     'shortDes': 'Check out their profile and send them custom offers!',
    //   },
    //   {
    //     'bgImage': 'images/bgslide4.png',
    //     'topimageIcon': 'images/bgslide5.png',
    //     'title': 'Island Boys',
    //     'shortDes': 'Check out their profile and send them custom offers!',
    //   },
    //   {
    //     'bgImage': 'images/bgslide5.png',
    //     'topimageIcon': 'images/bgslide5.png',
    //     'title': 'Island Boys',
    //     'shortDes': 'Check out their profile and send them custom offers!',
    //   },
    // ];
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 248,
        height: 333,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Image.asset(
                featuredShouterItem.bgImage,
                width: 248,
                height: 333,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 8, color: Colors.white)),
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    featuredShouterItem.topimageIcon,
                                  )),
                            ),
                            Transform.translate(
                              offset: Offset(30, -90),
                              child: Image.asset(
                                'images/slidercheckicon.png',
                                height: 60,
                                width: 60,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // height: 175,
                    decoration: BoxDecoration(
                      //  backgroundBlendMode: BlendMode.softLight,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFF00C9FF).withOpacity(0.8),
                          Color(0xFF00C9FF).withOpacity(0.4),
                          // Color(0xFF00C9FF).withOpacity(0.1),
                          Colors.white.withOpacity(0.0)
                        ],
                        //  transform: GradientRotation(100 / 3),

                        // tileMode: TileMode.clamp
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            featuredShouterItem.title,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold)),
                          ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Text(
                            featuredShouterItem.shortDes,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(0.2, 0.5),
                                  // blurRadius: _blurRadius,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    featuredShouterItem.featuredtitle,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    featuredShouterItem.bottomMessage,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                // width: 45,
                                // height: 45,
                                padding: EdgeInsets.all(7.5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: const [
                                        Color(0xFF7325B6),
                                        Color(0xFF29B3FE),
                                        Color(0xFF2FFFE1),
                                      ],
                                    )),
                                child: Image.asset(
                                  'images/horn-icon.png',
                                  width: 30,
                                  height: 30,
                                ),
                              )
                              // Image.asset(
                              //   'images/megahorn.png',
                              //   // width: 50,
                              //   // height: 50,
                              //   // fit: BoxFit.cover,
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
