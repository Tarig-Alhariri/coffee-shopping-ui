import 'package:coffee_app/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsItemScreen extends StatelessWidget {
  const DetailsItemScreen({super.key, this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white.withOpacity(.5),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Image.asset("assets/images/$image.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "BEST COFFEE ",
                    fontsize: 18,
                    color: Colors.white.withOpacity(.5),
                    letterSpacing: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: image!,
                    fontsize: 30,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Colors.white.withOpacity(.4)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: '2',
                              fontsize: 23,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      CustomText(
                        text: "\$ 30.10",
                        color: Colors.white,
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text:
                        "Coffee is major source of antioxidants in the diet. It has many health benefits",
                    color: Colors.white.withOpacity(.8),
                    fontsize: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: "Volume:  60 ml",
                    color: Colors.white,
                    fontsize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(.2)),
                        child: TextButton(
                            onPressed: () {},
                            child: CustomText(
                              text: "Add to Cart",
                              color: Colors.white,
                              fontsize: 30,
                            )),
                      ),
                      Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFE57734),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
