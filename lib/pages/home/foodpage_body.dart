import 'package:clgapp/util/color.dart';
import 'package:clgapp/util/daimantion.dart';
import 'package:clgapp/widget/big_text.dart';
import 'package:clgapp/widget/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../widget/app_column.dart';
import '../../widget/icon_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFacto = 0.8;
  double _height = Daimantion.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Daimantion.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
              activeColor: AppColor.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18, 9),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
        SizedBox(
          height: Daimantion.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Daimantion.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Daimantion.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: '.',
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Daimantion.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: 'Food Pairing',
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Daimantion.width20,
                    right: Daimantion.width20,
                    bottom: Daimantion.height10),
                child: Row(
                  children: [
                    //image container
                    Container(
                      width: Daimantion.listViewImgSize,
                      height: Daimantion.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Daimantion.reduis20),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/food1.jpeg"))),
                    ),
                    //text Container
                    Expanded(
                      child: Container(
                        height: Daimantion.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Daimantion.reduis20),
                            bottomRight: Radius.circular(Daimantion.reduis20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Daimantion.width10,
                              right: Daimantion.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: 'Nutritions fruit meal in India'),
                              SizedBox(
                                height: Daimantion.height10,
                              ),
                              SmallText(text: 'With Indians characteristics'),
                              SizedBox(
                                height: Daimantion.height10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(
                                      icon: Icons.circle_sharp,
                                      text: "Normal",
                                      iconColor: AppColor.iconColor1),
                                  IconAndTextWidget(
                                      icon: Icons.location_on,
                                      text: "1.7Km",
                                      iconColor: AppColor.mainColor),
                                  IconAndTextWidget(
                                      icon: Icons.access_time_rounded,
                                      text: "32Min",
                                      iconColor: AppColor.iconColor2),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFacto);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFacto + (_currPageValue - index + 1) * (1 - _scaleFacto);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFacto);

      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFacto) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: Daimantion.pageViewContainer,
          margin: EdgeInsets.only(
              left: Daimantion.width10, right: Daimantion.width10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Daimantion.reduis30),
            color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/food1.jpeg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Daimantion.pageViewTextContainer,
            margin: EdgeInsets.only(
                left: Daimantion.width30,
                right: Daimantion.width30,
                bottom: Daimantion.height30),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(Daimantion.reduis20),
                color: Colors.white),
            child: Container(
                padding: EdgeInsets.only(
                    top: Daimantion.height15,
                    left: Daimantion.height15,
                    right: Daimantion.height15),
                child: AppColumn(
                  text: "Chinese Side",
                )),
          ),
        ),
      ]),
    );
  }
}
