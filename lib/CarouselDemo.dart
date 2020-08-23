import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
 
class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();
 
  final String title = "Fiqh for Girls";
 
  @override
  CarouselDemoState createState() => CarouselDemoState();
}
 
class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://image.freepik.com/free-photo/beautiful-young-smiling-asian-muslim-woman-working-phone-sitting-living-room-home_7861-1006.jpg',
    'https://image.freepik.com/free-photo/muslim-business-woman-consulting-colleague-with-tablet_74855-2076.jpg',
    'https://image.freepik.com/free-photo/pretty-muslim-young-woman-looking-away_23-2148421632.jpg',
    'https://image.freepik.com/free-photo/muslim-woman-sharing-food-ramadan-feast_53876-41087.jpg',
    'https://image.freepik.com/free-photo/islamic-woman-small-business-owner-holding-blackboard-with-smiling_53876-30696.jpg'
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.green : Colors.grey,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Bermain Game',
                style: TextStyle(
                letterSpacing: 1.3,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                height: 1.3,
                ),
                ),
                // OutlineButton(
                //   onPressed: goToPrevious,
                //   child: Text("<"),
                // ),
                // OutlineButton(
                //   onPressed: goToNext,
                //   child: Text(">"),
                // ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Mainkan game dan uji pemahaman yang telah kamu pelajari'),
                // OutlineButton(
                //   onPressed: goToPrevious,
                //   child: Text("<"),
                // ),
                // OutlineButton(
                //   onPressed: goToNext,
                //   child: Text(">"),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
 
  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}