import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkey_shop_app/screens/main_screen.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String id = 'on_boarding_screen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollerPosition =0;
  final store = GetStorage();

  onButtonPressed(context){

    store.write('onBoarding', true);
    return Navigator.pushReplacementNamed(context, MainScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
    );
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (val) {
              setState(() {
                scrollerPosition = val.toDouble();
              });
            },
            children: [
              OnBoardPage(
                bordColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                  const Text(
                    'Welcome\nTo Shop Monkey !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                    '+10 Million Products\n+100 Categories\n+20 Brands',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 147, 59),
                        fontSize: 15),
                  ),
                  // ignore: sized_box_for_whitespace
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 450,
                    width: 650,
                    child: Image.asset('assets/images/01.png'),
                  )
                ]),
              ),
              OnBoardPage(
                bordColumn: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Text(
                    'Can pay online !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                      'VnPay, Momo\nSmart banking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 147, 59),
                        fontSize: 15),
                  ),
                  // ignore: sized_box_for_whitespace
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 450,
                    width: 650,
                    child: Image.asset('assets/images/02.png'),
                  )
                ]),
              ),
              OnBoardPage(
                bordColumn: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Text(
                    'Assured in terms of quality !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                    'Quality products\nActual product as pictured',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 147, 59),
                        fontSize: 15),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 450,
                    width: 650,
                    child: Image.asset('assets/images/03.png'),
                  )
                ]),
              ),
              OnBoardPage(
                bordColumn: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Text(
                    'Reputation is high trust !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                    '3 ★★★\n 4 ★★★★\n 5 ★★★★★',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 147, 59),
                        fontSize: 15),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 450,
                    width: 650,
                    child: Image.asset('assets/images/04.png'),
                  )
                ]),
              ),
              OnBoardPage(
                bordColumn: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Text(
                    'Buy all the products you love.\nAdd to cart now and we will pack and ship to you !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  const Text(
                    '+10 Million Products\n+100 Categories\n+20 Brands',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 147, 59),
                        fontSize: 15),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 450,
                    width: 650,
                    child: Image.asset('assets/images/05.png'),
                  )
                ]),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               DotsIndicator(
                  dotsCount: 5,
                  position: scrollerPosition,
                 decorator: const DotsDecorator(
                   size: Size.square(9.0),
                   activeSize: Size(18.0, 9.0),
                   color: Colors.white, // Inactive color
                   activeColor: Colors.black87,
                  ),
                ),
                scrollerPosition == 4 ? Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black87)
                    ),
                    child: const Text('Start Shopping'),
                    onPressed: (){
                      onButtonPressed(context);
                    },
                  ),
                ) :
                TextButton(
                  child:  const Text('Skip To The App >',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                      ),
                   ),
                  onPressed: (){
                    onButtonPressed(context);
                  },
                ),
                const SizedBox(height: 60,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
class OnBoardPage extends StatelessWidget {
  final Column? bordColumn;
  const OnBoardPage({Key? key, this.bordColumn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Center(child: bordColumn),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,//scren width
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),topRight: Radius.circular(100)
              )
            ),
          ),
        )
      ],
    );
  }
}


