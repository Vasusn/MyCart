import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets_comman/bg_widgets.dart';
import 'package:emart_app/widgets_comman/button.dart';

import '../../consts/consts.dart';
import 'componets/details_cart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
            ),
             Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    "Dummy@gmail.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: whiteColor),
                    ),
                    onPressed: () {},
                    child: 'Logout'.text.fontFamily(semibold).white.make())
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCart(
                    count: '00',
                    title: "in your cart",
                    Width: context.screenWidth / 3.4),
                detailsCart(
                    count: '32',
                    title: "in your wishlist",
                    Width: context.screenWidth / 3.3),
                detailsCart(
                    count: '675',
                    title: "your oreders",
                    Width: context.screenWidth / 3.4),
              ],
            ),

            //button

            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonList.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonIcon[index],
                    width: 22,
                  ),
                  title: profileButtonList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
            )
                .box
                .white
                .rounded
                .margin(EdgeInsets.all(12))
                .shadowSm
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
