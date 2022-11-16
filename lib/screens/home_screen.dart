import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:monkey_shop_app/widgets/brand_highlights.dart';
import 'package:monkey_shop_app/widgets/category_widget.dart';
import '../widgets/banner_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          // backgroundColor: Colors.blue.shade900,
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'MonKey Shop',
            style: TextStyle(letterSpacing: 2),
          ),
          actions: [
            IconButton(
              icon: const Icon(IconlyLight.bag),
              onPressed: () {},
            )
          ],
        ),
      ),
      //lits view
      body: ListView(
        children: const [
          SearchWidget(),
          SizedBox(height: 10,),
          BannerWidget(),
          BrandHighlights(),
          CategoryWidget()
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(8, 6, 8, 0),
                    hintText: '15.11 Sale 10% + Free Ship ',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      IconlyLight.search,
                      size: 20,
                      color: Colors.redAccent,
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(
                    IconlyLight.infoSquare,
                    size: 12,
                    color: Colors.white,
                  ),
                  Text(
                    '100% Genuine',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    IconlyLight.infoSquare,
                    size: 12,
                    color: Colors.white,
                  ),
                  Text(
                    ' 4 - 7 Days Return',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    IconlyLight.infoSquare,
                    size: 12,
                    color: Colors.white,
                  ),
                  Text(
                    ' Trusted Brands',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
