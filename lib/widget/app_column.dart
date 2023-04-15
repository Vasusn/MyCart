import 'package:flutter/material.dart';

import '../util/color.dart';
import '../util/daimantion.dart';
import 'big_text.dart';
import 'icon_text.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Daimantion.font26,
        ),
        SizedBox(
          height: Daimantion.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) {
                  return Icon(
                    Icons.star,
                    color: AppColor.mainColor,
                    size: 15,
                  );
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: '4.5'),
           const SizedBox(
              width: 10,
            ),
            SmallText(text: '12542'),
           const SizedBox(
              width: 10,
            ),
            SmallText(text: 'Comments'),
          ],
        ),
        SizedBox(
          height: Daimantion.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
