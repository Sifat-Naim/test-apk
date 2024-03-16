import 'package:naimur_rahman_s_application1/widgets/custom_text_form_field.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_checkbox_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_elevated_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:naimur_rahman_s_application1/core/app_export.dart';

class Iphone1415ProOnePage extends StatefulWidget {
  const Iphone1415ProOnePage({Key? key}) : super(key: key);

  @override
  Iphone1415ProOnePageState createState() => Iphone1415ProOnePageState();
}

// ignore_for_file: must_be_immutable
class Iphone1415ProOnePageState extends State<Iphone1415ProOnePage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProOnePage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberpassword = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: 393.h,
                            decoration: AppDecoration.fillPrimary,
                            child: Column(children: [
                              SizedBox(height: 43.v),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 45.h, right: 31.h),
                                    child: CustomTextFormField(
                                        controller: emailController,
                                        hintText: "Email Address",
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: EdgeInsets.only(
                                                top: 6.v,
                                                right: 11.h,
                                                bottom: 4.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLockGray500,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 35.v),
                                        contentPadding:
                                            EdgeInsets.only(right: 30.h))),
                                SizedBox(height: 48.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 45.h, right: 31.h),
                                    child: CustomTextFormField(
                                        controller: passwordController,
                                        hintText: "Password",
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        prefix: Container(
                                            margin: EdgeInsets.only(
                                                top: 4.v,
                                                right: 11.h,
                                                bottom: 6.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLockGray50024x24,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 35.v),
                                        suffix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 10.v, 3.h, 6.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant.imgEye,
                                                height: 18.v,
                                                width: 33.h)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 35.v),
                                        obscureText: true)),
                                SizedBox(height: 40.v),
                                _buildEight(context),
                                SizedBox(height: 41.v),
                                CustomElevatedButton(
                                    text: "Login",
                                    margin: EdgeInsets.only(
                                        left: 50.h, right: 25.h),
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlackTL5,
                                    buttonTextStyle:
                                        CustomTextStyles.headlineSmallPrimary,
                                    onPressed: () {
                                      onTapLogin(context);
                                    },
                                    alignment: Alignment.centerRight),
                                SizedBox(height: 9.v),
                                _buildTen(context)
                              ])
                            ])))))));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 45.h, right: 27.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomCheckboxButton(
              text: "Remember password",
              value: rememberpassword,
              textStyle: theme.textTheme.titleLarge,
              onChange: (value) {
                rememberpassword = value;
              }),
          Text("Forget password",
              style: CustomTextStyles.titleLargeLightblue700)
        ]));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return SizedBox(
        height: 321.v,
        width: 393.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage11,
              height: 240.v,
              width: 361.h,
              radius: BorderRadius.circular(120.h),
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topCenter,
              child: Text("or connect with",
                  style: CustomTextStyles.headlineSmallGray600)),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 50.v, right: 80.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                            height: 39.adaptSize,
                            width: 39.adaptSize,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFacebookIndigo600)),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgInstagram1Indigo600))),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPlay))),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLinkLightBlue80001)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup16,
              height: 319.v,
              width: 374.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 118.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup2),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 37.v),
                        Padding(
                            padding: EdgeInsets.only(right: 36.h),
                            child: CustomIconButton(
                                height: 72.v,
                                width: 69.h,
                                padding: EdgeInsets.all(7.h),
                                decoration:
                                    IconButtonStyleHelper.outlinePrimary,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFingerprintPrimary))),
                        SizedBox(height: 15.v),
                        Text("Login wit touch ID",
                            style: CustomTextStyles.headlineSmallPrimary)
                      ])))
        ]));
  }

  /// Navigates to the iphone1415ProMaxOneScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxOneScreen);
  }
}
