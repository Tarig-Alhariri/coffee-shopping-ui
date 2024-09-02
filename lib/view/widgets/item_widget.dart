// ignore_for_file: must_be_immutable

import 'package:coffee_app/view/widgets/custom_text.dart';
import 'package:coffee_app/view/details_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  List image = [
    'Black Coffee',
    'Cold Coffee',
    'Espresso',
    'Latte',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 70 / 90,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < image.length; i++)
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.02),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 8,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          child: InkWell(
                            onTap: () {
                              Get.to(DetailsItemScreen(
                                image: image[i],
                              ));
                            },
                            child: Image.asset(
                              "assets/images/${image[i]}.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: image[i],
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontsize: 20,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CustomText(
                        text: "Best Coffee",
                        color: Colors.white.withOpacity(.5),
                        fontsize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "\$30",
                            color: Colors.white,
                            fontsize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          Container(
                            padding: EdgeInsets.all(.8),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE57734),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
