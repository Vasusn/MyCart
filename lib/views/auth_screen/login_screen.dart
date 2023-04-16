import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets_comman/applogo_widgets.dart';
import 'package:get/get.dart';

import '../../widgets_comman/bg_widgets.dart';
import '../../widgets_comman/button.dart';
import '../../widgets_comman/costom_textfild.dart';
import '../homeScreen/home.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextFild(title: email, hint: emailhint),
              customTextFild(title: password, hint: passwordhint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgotpassword.text.make())),
              5.heightBox,
              ourButton(
                  Color: redColor,
                  title: login,
                  textcolor: whiteColor,
                  onPress: () {
                    Get.to(() => Home());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              ourButton(
                  Color: lightGolden,
                  title: signup,
                  textcolor: redColor,
                  onPress: () {
                    Get.to(() => SignupScreen());
                  }).box.width(context.screenWidth - 50).make(),
              10.heightBox,
              loginwith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        )),
              )
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
