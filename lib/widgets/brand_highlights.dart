import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:monkey_shop_app/widgets/banner_widget.dart';

class BrandHighlights extends StatefulWidget {
  const BrandHighlights({Key? key}) : super(key: key);

  @override
  State<BrandHighlights> createState() => _BrandHighlightsState();
}

class _BrandHighlightsState extends State<BrandHighlights> {

  double _scrollPosition = 0;
  @override
  Widget build(BuildContext context) {



    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 18,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Brand Highlights',
                style: TextStyle(fontWeight: FontWeight.bold,
                letterSpacing: 1,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            height: 166,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: PageView(
              onPageChanged: (val){
                setState(() {
                  _scrollPosition = val.toDouble();
                });
              },
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,6,8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4) ,
                              child: Container(
                                height: 100,
                                color: Colors.redAccent,
                                child: const Center(
                                  child: Text(
                                    'Add Link\nVideo Youtube',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8,0,4,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child:const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,8,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child: const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,8,8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            height: 160,
                            color: Colors.deepOrangeAccent,
                            child: const Center(
                              child: Text(
                                'Add Link',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,6,8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4) ,
                              child: Container(
                                height: 100,
                                color: Colors.redAccent,
                                child: const Center(
                                  child: Text(
                                    'Add Link\nVideo Youtube',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8,0,4,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child:const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,8,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child: const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,8,8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            height: 160,
                            color: Colors.deepOrangeAccent,
                            child: const Center(
                              child: Text(
                                'Add Link',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,6,8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4) ,
                              child: Container(
                                height: 100,
                                color: Colors.redAccent,
                                child: const Center(
                                  child: Text(
                                    'Add Link\nVideo Youtube',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8,0,4,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child:const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,8,8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 50,
                                      color: Colors.orange,
                                      child: const Center(
                                        child: Text(
                                          'Add Link',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,8,8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            height: 160,
                            color: Colors.deepOrangeAccent,
                            child: const Center(
                              child: Text(
                                'Add Link',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DotsIndicatorWidget(scrollPosition: _scrollPosition)
        ],
      ),
    );
  }
}
