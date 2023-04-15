import 'package:clgapp/util/color.dart';
import 'package:clgapp/util/daimantion.dart';
import 'package:clgapp/widget/app_icon.dart';
import 'package:clgapp/widget/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/expandble.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Daimantion.reduis20),
                      topLeft: Radius.circular(Daimantion.reduis20),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: BigText(
                    text: 'Chineses Side',
                    size: Daimantion.font26,
                  )),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                ),
                preferredSize: Size.fromHeight(20)),
            pinned: true,
            backgroundColor: AppColor.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/food1.jpeg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(
                    left: Daimantion.width20, right: Daimantion.width20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: Daimantion.width20, right: Daimantion.width20),
                      child: ExpandableTextWidget(
                        text:
                            'Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.Biriani, a mouth-watering dish available on our food app! Made with fragrant basmati rice, succulent meat or vegetables, and a symphony of aromatic spices, Biriani is a celebration of exquisite flavors and textures. Our food app offers a diverse range of Biriani recipes from traditional to modern, crafted by renowned chefs and local cooks. With easy-to-follow instructions and helpful tips, you can create a delectable Biriani masterpiece in your own kitchen. Join us on a culinary adventure and indulge in the rich flavors, warm spices, and irresistible charm of Biriani.',
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Daimantion.width20 * 2.5,
                right: Daimantion.width20 * 2.5,
                top: Daimantion.height10,
                bottom: Daimantion.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    Iconsize: 24,
                    icon: Icons.add,
                    backgroundColor: AppColor.mainColor,
                    iconColor: Colors.white),
                BigText(
                  text: '\$12.88 ' + ' X ' + ' 0',
                  color: Colors.black,
                  size: Daimantion.font26,
                ),
                AppIcon(
                  Iconsize: 24,
                  icon: Icons.remove,
                  backgroundColor: AppColor.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
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
                        borderRadius:
                            BorderRadius.circular(Daimantion.reduis20),
                        color: Colors.white),
                    child: AppIcon(
                      icon: Icons.favorite,
                      iconColor: AppColor.mainColor,
                      backgroundColor: Colors.white,
                      Iconsize: 20,
                    )),
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
        ],
      ),
    );
  }
}
