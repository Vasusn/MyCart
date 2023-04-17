import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_comman/bg_widgets.dart';
import 'package:get/get.dart';

import 'item_details.dart';

class CatagoryDetails extends StatelessWidget {
  final String? title;
  const CatagoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title?.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothig"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 140,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .fontFamily(bold)
                              .color(redColor)
                              .size(16)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .roundedSM
                          .outerShadowSm
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()
                          .onTap(() {
                        Get.to(() => ItemDetails(
                              title: "Dumm title",
                            ));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}