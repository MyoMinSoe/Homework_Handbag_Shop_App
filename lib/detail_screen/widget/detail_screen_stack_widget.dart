import 'package:flutter/material.dart';
import 'package:handbags_sale_app/detail_screen/widget/buy_now_widget.dart';
import 'package:handbags_sale_app/detail_screen/widget/quantity_favourite_widget.dart';
import 'package:handbags_sale_app/detail_screen/widget/stack_widget_color_and_size.dart';
import 'package:handbags_sale_app/detail_screen/widget/stack_widget_positioned.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class DetailScreenStackWidget extends StatefulWidget {
  const DetailScreenStackWidget({
    super.key,
    required this.height,
    required this.width,
    required this.index,
  });

  final double height;
  final double width;
  final int index;

  @override
  State<DetailScreenStackWidget> createState() =>
      _DetailScreenStackWidgetState();
}

class _DetailScreenStackWidgetState extends State<DetailScreenStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          padding: EdgeInsets.only(
              top: widget.height * 0.1,
              left: 20,
              right: 20,
              bottom: widget.height * 0.015),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          margin: EdgeInsets.only(top: widget.height * 0.27),
          height: widget.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StackColorAndSizeWidget(
                  width: widget.width,
                  height: widget.height,
                  index: widget.index),
              //Hand Bag About Text Widget*************************
              Container(
                  height: widget.height * 0.15,
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      HandbagsList().handbaglist[widget.index].about,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  )),
              //Hand Bag About Text Widget*************************
              QuantityFavouriteWidget(widget: widget),
              BuyNowWidget(widget: widget)
            ],
          ),
        ),
        StackWidgetPositioned(width: widget.width, index: widget.index)
      ],
    );
  }
}
