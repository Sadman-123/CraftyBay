import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class BannerCarousel extends StatefulWidget {
  final List<Map<String, String>> promotions;
  final double mdw;
  final double mdh;
  BannerCarousel({
    required this.promotions,
    required this.mdw,
    required this.mdh,
  });
  @override
  _BannerCarouselState createState() => _BannerCarouselState();
}
class _BannerCarouselState extends State<BannerCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.promotions.map((promotion) {
            return Builder(
              builder: (BuildContext context) {
                return BannerCard(
                  widget.mdw,
                  widget.mdh,
                  promotionitempic: promotion['image']!,
                  promotiontxt: promotion['text']!,
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: widget.mdh * 0.28,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 0.99,
            aspectRatio: 2.0,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
  Widget BannerCard(double mdw, double mdh,
      {required String promotionitempic, required String promotiontxt}) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: mdh * 0.25,
      decoration: BoxDecoration(
        color: Color(0xFF07afae),
        borderRadius:
        BorderRadius.vertical(top: Radius.circular(14), bottom: Radius.circular(14)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset(
                  "$promotionitempic",
                  width: mdw * 0.43,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        "$promotiontxt",
                        style: TextStyle(
                          fontSize: mdw * 0.065,
                          color: Color(0xFFfefffe),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                      },
                      child: Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFfefffe),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            margin: EdgeInsets.all(5),
                            width: mdw * 0.26,
                            height: mdh * 0.06,
                            child: Center(
                              child: Text(
                                "Buy Now",
                                style: TextStyle(color: Color(0xFF1bb4b5)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
