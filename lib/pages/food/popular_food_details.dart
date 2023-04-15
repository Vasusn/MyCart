import 'package:clgapp/util/daimantion.dart';
import 'package:clgapp/widget/app_icon.dart';
import 'package:clgapp/widget/expandble.dart';
import 'package:flutter/material.dart';

import '../../util/color.dart';
import '../../widget/app_column.dart';
import '../../widget/big_text.dart';
import '../../widget/icon_text.dart';
import '../../widget/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgroung image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Daimantion.PopularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/food1.jpeg'), fit: BoxFit.cover),
              ),
            ),
          ),
          //icon widgets
          Positioned(
            top: Daimantion.height45,
            left: Daimantion.width20,
            right: Daimantion.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Daimantion.PopularFoodImgSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Daimantion.width20,
                    right: Daimantion.height20,
                    top: Daimantion.height10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Daimantion.reduis20),
                      topLeft: Radius.circular(Daimantion.reduis20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: "Chinese Side",
                    ),
                    SizedBox(
                      height: Daimantion.height20,
                    ),
                    BigText(text: 'Introduce'),
                    SizedBox(
                      height: Daimantion.height20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                'Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.'),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Daimantion.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Daimantion.height30,
            bottom: Daimantion.height30,
            left: Daimantion.width20,
            right: Daimantion.width20),
        decoration: BoxDecoration(
          color: AppColor.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Daimantion.reduis20 * 2),
            topRight: Radius.circular(Daimantion.reduis20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Daimantion.height20,
                  bottom: Daimantion.height20,
                  left: Daimantion.width20,
                  right: Daimantion.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Daimantion.reduis20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColor.signColor,
                  ),
                  SizedBox(
                    width: Daimantion.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Daimantion.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColor.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Daimantion.height20,
                  bottom: Daimantion.height20,
                  left: Daimantion.width20,
                  right: Daimantion.width20),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Daimantion.reduis20),
                  color: AppColor.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
