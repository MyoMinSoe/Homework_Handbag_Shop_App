import 'package:flutter/material.dart';
import 'package:handbags_sale_app/home/widget/handbags_gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController myTab;
  @override
  void initState() {
    myTab = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              'Women',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          TabBar(
            labelStyle: const TextStyle(
                fontWeight: FontWeight.w500, letterSpacing: 0.7),
            labelColor: Colors.black,
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            unselectedLabelColor: Colors.grey,
            indicatorPadding: const EdgeInsets.only(right: 30),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            isScrollable: true,
            controller: myTab,
            tabs: const [
              Tab(text: 'Hand Bag'),
              Tab(text: 'Jewellery'),
              Tab(text: 'Footwear'),
              Tab(text: 'Dresses'),
              Tab(text: 'Make Up'),
            ],
          ),
          const SizedBox(height: 30),
          //GridView of HandBags*************************
          const HandBagsGridView(),
        ],
      ),
    );
  }
}
