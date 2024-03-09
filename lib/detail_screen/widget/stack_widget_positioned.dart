import 'package:flutter/material.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class StackWidgetPositioned extends StatelessWidget {
  const StackWidgetPositioned({
    super.key,
    required this.width,
    required this.index,
  });

  final double width;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: width * 0.05,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  HandbagsList().handbaglist[index].price,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Image.asset(
              HandbagsList().handbaglist[index].image,
              fit: BoxFit.contain,
              width: width * 0.75,
            )
          ],
        ));
  }
}
