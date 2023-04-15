import 'package:clgapp/widget/small_text.dart';
import 'package:flutter/widgets.dart';

import '../util/daimantion.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Daimantion.icon24,
        ),
        SizedBox(
          width: Daimantion.width5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
