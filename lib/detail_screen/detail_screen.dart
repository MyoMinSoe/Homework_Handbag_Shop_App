import 'package:flutter/material.dart';
import 'package:handbags_sale_app/detail_screen/widget/detail_screen_body.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HandbagsList().handbaglist[index].color,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.keyboard_backspace)),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 20),
        ],
      ),
      body: DetailScreenBody(index: index),
    );
  }
}
