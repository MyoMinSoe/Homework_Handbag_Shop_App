import 'package:flutter/material.dart';
import 'package:handbags_sale_app/detail_screen/detail_screen.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class HandBagsGridView extends StatelessWidget {
  const HandBagsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: HandbagsList().handbaglist.length,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 260,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(index),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  decoration: BoxDecoration(
                      color: HandbagsList().handbaglist[index].color,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    HandbagsList().handbaglist[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    HandbagsList().handbaglist[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    HandbagsList().handbaglist[index].price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
