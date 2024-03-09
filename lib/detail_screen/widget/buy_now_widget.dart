import 'package:flutter/material.dart';
import 'package:handbags_sale_app/detail_screen/widget/detail_screen_stack_widget.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class BuyNowWidget extends StatelessWidget {
  const BuyNowWidget({
    super.key,
    required this.widget,
  });

  final DetailScreenStackWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: HandbagsList().handbaglist[widget.index].color,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Icon(
              color: HandbagsList().handbaglist[widget.index].color,
              Icons.shopping_cart_checkout_sharp,
              size: 35,
            )),
        const SizedBox(width: 20),
        Expanded(
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor:
                      HandbagsList().handbaglist[widget.index].color,
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: HandbagsList().handbaglist[widget.index].color,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
        )
      ],
    );
  }
}
