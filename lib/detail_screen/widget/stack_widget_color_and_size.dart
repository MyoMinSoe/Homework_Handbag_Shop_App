import 'package:flutter/material.dart';
import 'package:handbags_sale_app/handbags_model/handbags_list.dart';

class StackColorAndSizeWidget extends StatelessWidget {
  const StackColorAndSizeWidget({
    super.key,
    required this.width,
    required this.height,
    required this.index,
  });

  final double width;
  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: width * 0.25,
          height: height * 0.07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Color',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 87, 158),
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 0, 87, 158),
                      radius: 9,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 198, 130, 14),
                    radius: 10,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(width: width * 0.2),
        SizedBox(
          height: height * 0.07,
          width: width * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Size',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                HandbagsList().handbaglist[index].size,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
