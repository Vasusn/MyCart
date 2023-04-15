import 'package:clgapp/util/color.dart';
import 'package:clgapp/widget/small_text.dart';
import 'package:flutter/material.dart';

import '../../util/daimantion.dart';
import '../../widget/big_text.dart';
import 'foodpage_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Daimantion.height45, bottom: Daimantion.height15),
              padding: EdgeInsets.only(
                  left: Daimantion.width20, right: Daimantion.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'India',
                        color: AppColor.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Gujrat',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Daimantion.icon24,
                    ),
                    width: Daimantion.width45,
                    height: Daimantion.height45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Daimantion.reduis15),
                        color: AppColor.mainColor),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
