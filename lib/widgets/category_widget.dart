import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<String> _categoryLabel= <String>[
    '*Picked For You',
    'Foods',
    'Vesgetable',
    'Fast Foods'
  ];
  int _index =0;
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
              child: Text('Stores For You',
                style: TextStyle(fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20
                ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,8,8),
            child: SizedBox(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categoryLabel.length,
                      itemBuilder: (BuildContext context,int index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ActionChip(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)
                            ),
                            backgroundColor: _index == index ? Colors.blue.shade900:Colors.grey,
                            label: Text(_categoryLabel[index],style: TextStyle(fontSize: 12,color:_index == index ? Colors.white:Colors.black),),
                            onPressed: (){
                              setState(() {
                                _index = index;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      //hien thi tat ca category
                    },
                    icon: const Icon(IconlyLight.arrowDown),)
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}