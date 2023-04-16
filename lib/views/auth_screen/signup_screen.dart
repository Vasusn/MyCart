import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../widgets_comman/applogo_widgets.dart';
import '../../widgets_comman/bg_widgets.dart';
import '../../widgets_comman/button.dart';
import '../../widgets_comman/costom_textfild.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextFild(title: name, hint: namehint),
              customTextFild(title: email, hint: emailhint),
              customTextFild(title: password, hint: passwordhint),
              customTextFild(title: retypepass, hint: passwordhint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgotpassword.text.make())),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                      activeColor: redColor,
                      checkColor: Colors.white,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue!;
                        });
                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to the ",
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey),
                          ),
                          TextSpan(
                            text: termandcon,
                            style:
                                TextStyle(fontFamily: regular, color: redColor),
                          ),
                          TextSpan(
                            text: " & ",
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey),
                          ),
                          TextSpan(
                            text: Privacypolicy,
                            style:
                                TextStyle(fontFamily: regular, color: redColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ourButton(
                      Color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textcolor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyacc,
                      style: TextStyle(fontFamily: bold, color: fontGrey),
                    ),
                    TextSpan(
                      text: login,
                      style: TextStyle(fontFamily: bold, color: redColor),
                    ),
                  ],
                ),
              ).onTap(() {
                Get.back();
              })
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ],
      )),
    ));
  }
}
