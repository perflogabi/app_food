import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom App Bar Widget
          AppBarWidget(),

          // Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container (
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0,3),
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(children: [
                Icon(CupertinoIcons.search,
                color: Colors.red,
                ),
              Container(
                height: 50,
                width: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: " O que você procura hoje?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Icon(Icons.filter_list),
            ],),
            ),
          )
        ),

        // Category
        Padding(
          padding: EdgeInsets.only(top:20, left: 10),
          child: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20),
           ),
        ),
        // Category Widget
        CategoriesWidget(),

        // Popular Items
         Padding(
          padding: EdgeInsets.only(top:20, left: 10),
          child: Text(
            "Popular",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20),
           ),
        ),

        // Popular Items Widget
        PopularItemsWidget(),
      ],
    ),
  );
    }
}