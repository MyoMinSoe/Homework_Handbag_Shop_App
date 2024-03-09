import 'package:flutter/material.dart';
import 'package:handbags_sale_app/detail_screen/widget/detail_screen_stack_widget.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class QuantityFavouriteWidget extends StatefulWidget {
  const QuantityFavouriteWidget({
    super.key,
    required this.widget,
  });
  final DetailScreenStackWidget widget;

  @override
  State<QuantityFavouriteWidget> createState() =>
      _QuantityFavouriteWidgetState();
}

class _QuantityFavouriteWidgetState extends State<QuantityFavouriteWidget> {
  int count = 0;
  String countString = '00';
  bool selected = false;
  late Icon myicon;
  @override
  void initState() {
    myicon = Icon(
      size: 40,
      Icons.heart_broken_outlined,
      color: HandbagsList().handbaglist[widget.widget.index].color,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color:
                          HandbagsList().handbaglist[widget.widget.index].color,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              count--;
              if (count < 10) {
                countString = '0$count';
              } else {
                countString = count.toString();
              }
              if (count < 0) {
                count = 0;
                countString = '0$count';
              }
              setState(() {});
            },
            child: Text(
              '-',
              style: TextStyle(
                  fontSize: 20,
                  color: HandbagsList().handbaglist[widget.widget.index].color,
                  fontWeight: FontWeight.w900),
            )),
        const SizedBox(width: 10),
        Text(
          countString,
          style: TextStyle(
              fontSize: 20,
              color: HandbagsList().handbaglist[widget.widget.index].color),
        ),
        const SizedBox(width: 10),
        TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color:
                          HandbagsList().handbaglist[widget.widget.index].color,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              count++;
              if (count < 10) {
                countString = '0$count';
              } else {
                countString = count.toString();
              }

              setState(() {});
            },
            child: Text(
              '+',
              style: TextStyle(
                  fontSize: 20,
                  color: HandbagsList().handbaglist[widget.widget.index].color,
                  fontWeight: FontWeight.w900),
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              if (selected == true) {
                selected = false;
                myicon = Icon(
                  size: 40,
                  Icons.heart_broken_outlined,
                  color: HandbagsList().handbaglist[widget.widget.index].color,
                );
              } else {
                selected = true;
                myicon = Icon(
                  size: 40,
                  Icons.heart_broken,
                  color: HandbagsList().handbaglist[widget.widget.index].color,
                );
              }
              setState(() {});
            },
            child: myicon)
      ],
    );
  }
}
