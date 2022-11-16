import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:monkey_shop_app/firebase_service.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {

  final FirebaseServive _servive = FirebaseServive();
  double scrollPosition = 0;
  final List _bannerImage = [];

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  getBanners(){
    return _servive.homeBanner
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        //here we get all the documents for
        //add those docs in a list
        setState(() {
          _bannerImage.add(doc['image']);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8,0,8,8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: PageView.builder(
                itemCount: _bannerImage.length,
                itemBuilder: (BuildContext context, int index){
                  return Image.network(_bannerImage[index]);
                },
                onPageChanged: (val){
                  setState(() {
                    scrollPosition = val.toDouble();
                  });
                },
                // children: const [
                //   Center(
                //     child:Text(
                //       'Banner 1',
                //       style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                //     ),
                //   ),
                //   Center(
                //     child:Text(
                //       'Banner 2',
                //       style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                //     ),
                //   ),
                //   Center(
                //     child:Text(
                //       'Banner 3',
                //       style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ],
              ),
            ),
          ),
        ),
        // DotsIndicatorWidget(scrollPosition: scrollPosition)
        Positioned(
            bottom: 10.0,
            child: DotsIndicatorWidget(scrollPosition: scrollPosition),
        )
      ],
    );
  }
}

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
    required this.scrollPosition,
  }) : super(key: key);

  final double scrollPosition;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: DotsIndicator(
            position: scrollPosition,
            dotsCount: 3,
            decorator: DotsDecorator(
              //activeColor: Colors.blue.shade900,
                spacing: const EdgeInsets.all(2),
                size: const Size.square(6),
                activeSize: const Size(12,6),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                )
            ),
          ),
        ),
      ],
    );
  }
}

// class DotsIndicatorWidget extends StatelessWidget {
//   const DotsIndicatorWidget({
//     Key? key,
//     required this.scrollPosition,
//   }) : super(key: key);
//
//   final double scrollPosition;
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 10.0,
//       child:Row(
//         children: [
//            SizedBox(
//             width: MediaQuery.of(context).size.width,
//             child: DotsIndicator(
//               position: scrollPosition,
//               dotsCount: 3,
//               decorator: DotsDecorator(
//                 //activeColor: Colors.blue.shade900,
//                   spacing: const EdgeInsets.all(2),
//                   size: const Size.square(6),
//                   activeSize: const Size(12,6),
//                   activeShape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4)
//                   )
//               ),
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }
