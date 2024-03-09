import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:handbags_sale_app/detail_screen/widget/detail_screen_stack_widget.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class DetailScreenBody extends StatelessWidget {
  const DetailScreenBody({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Center(
      child: Container(
        color: HandbagsList().handbaglist[index].color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    HandbagsList().handbaglist[index].type,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Text(
                    HandbagsList().handbaglist[index].name,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            DetailScreenStackWidget(height: height, width: width, index: index)
          ],
        ),
      ),
    );
  }
}
