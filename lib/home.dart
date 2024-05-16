import 'package:flutter/material.dart';
import 'package:task/details.dart';
import 'package:task/model/data/item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = Item(); 
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
             
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(62),
            child: Container(
              margin: const EdgeInsets.only(left: 0),
              child: TabBar(
                indicator: const BoxDecoration(
                  color: Colors.transparent, 
                ),
                labelColor: Colors.black,
                tabs: [
                  Container(
                    width: 168,
                    height: 42,
                    margin: const EdgeInsets.only(right: 650),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: const Tab(
                      text: 'Details',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            DetailsPage(item: item), 
          ],
        ),
      ),
    );
  }
}


