import 'package:flutter/material.dart';

class ShoutsySlide extends StatelessWidget {
  const ShoutsySlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding: EdgeInsets.all(15),
              height: 218,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: const [
                      Color(0xFFB83FFA),
                      Color(0xFF29B3FE),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    // stops: [0.5, 0.5],
                    tileMode: TileMode.clamp),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      width: 28,
                      height: 28,
                    ),
                  ),
                  Text(
                    'Campaign Management',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Let our team find influencers for you!',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 1.2),
                  ),
                  SizedBox(
                    height: 32,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Color(0xFF7325B6),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 228,
              width: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: const [
                      Color(0xFF893EF6),
                      Color(0xFFB83FFA),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    // stops: [0.5, 0.5],
                    tileMode: TileMode.clamp),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/diamond-icon.png'),
                  Text(
                    'Brand Referal',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Refer brands and get 10% of their first purchase!',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 1.2),
                  ),
                  SizedBox(
                    height: 32,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Color(0xFF7325B6),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 228,
              width: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: const [
                      Color(0xFF0083FE),
                      Color(0xFF00FFF0),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    // stops: [0.5, 0.5],
                    tileMode: TileMode.clamp),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/subtract.png'),
                  Text(
                    'Get Featured',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Be discovered at the top of the marketplace!',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 1.2),
                  ),
                  SizedBox(
                    height: 32,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Color(0xFF7325B6),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
