import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multi_vendor_shop_app/widgets/banner_widget.dart';
import 'package:multi_vendor_shop_app/widgets/brand_highlights.dart';
import 'package:multi_vendor_shop_app/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.orange.shade500,
          elevation: 0,
          centerTitle: true,
          title: const Text('FOODLY',style: TextStyle(letterSpacing: 2),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(IconlyLight.buy)
            )
          ],
        ),
      ),
      body: ListView(
        children:  const [
          SearchWidget(),
          SizedBox(height: 10,),
          BannerWidget(),
          BrandHighlights(),
          SizedBox(height: 5,),
          CategoryWidget()
        ],
      ),

    );

  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Padding(
            padding:const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor:Colors.white,
                  border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                    hintText: 'Search in Foodly',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search,size: 20,color: Colors.grey,)
                ),
              ),
            ),
          ),
        ),
        SizedBox (
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(IconlyLight.infoSquare,size: 12,color: Colors.white,),
                  Text('100% Genuine',style: TextStyle(color: Colors.white,fontSize: 12),),
                ],
              ),
              Row(
                children: [
                  Icon(IconlyLight.infoSquare,size: 12,color: Colors.white,),
                  Text('5-7 days Return ',style: TextStyle(color: Colors.white,fontSize: 12),),
                ],
              ),
              Row(
                children: [
                  Icon(IconlyLight.infoSquare,size: 12,color: Colors.white,),
                  Text('Trusted Brands',style: TextStyle(color: Colors.white,fontSize: 12),),
                ],
              ),
            ],
          ),
        )

      ],
    );
  }
}

