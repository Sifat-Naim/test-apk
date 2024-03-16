import 'package:naimur_rahman_s_application1/widgets/custom_checkbox_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_elevated_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_outlined_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_icon_button.dart';
import 'package:naimur_rahman_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:naimur_rahman_s_application1/core/app_export.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  Iphone1415ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  bool rememberpassword = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  children: [
                    SizedBox(height: 5.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: appTheme.orange500,
                          width: 5.h,
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder58,
                      ),
                      child: Container(
                        height: 914.v,
                        width: 414.h,
                        decoration: AppDecoration
                            .gradientPrimaryToErrorContainer
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder58,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(right: 191.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.h,
                                  vertical: 392.v,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgGroup1,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 36.v),
                                    _buildRememberpassword(context),
                                    SizedBox(height: 28.v),
                                    _buildLogin(context),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 224.v),
                                child: Text(
                                  "or connect with",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            _buildRegister(context),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 145.v),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 20.v,
                                        bottom: 9.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Login",
                                              style: CustomTextStyles
                                                  .titleLargeTrebuchetMSDeeporange500,
                                            ),
                                          ),
                                          SizedBox(height: 10.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              width: 200.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "By signing in you are agreeing our ",
                                                      style: CustomTextStyles
                                                          .bodyMediumTrebuchetMSff6b5e5e,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "Term and privacy polic",
                                                      style: CustomTextStyles
                                                          .bodyMediumTrebuchetMSff0386d0,
                                                    ),
                                                    TextSpan(
                                                      text: "y",
                                                      style: CustomTextStyles
                                                          .bodyMediumTrebuchetMSff356df8,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgKlokRoyalBlue1,
                                      height: 108.v,
                                      width: 107.h,
                                      margin: EdgeInsets.only(left: 23.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 429.v,
                                  right: 59.h,
                                ),
                                child: Text(
                                  "Forget password",
                                  style: CustomTextStyles
                                      .bodyMediumTrebuchetMSBlueA200,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 89.h,
                                  right: 78.h,
                                  bottom: 50.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildLoginWithFacebook(context),
                                    SizedBox(height: 22.v),
                                    _buildLoginWithInstagram(context),
                                    SizedBox(height: 22.v),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5.h,
                                        vertical: 3.v,
                                      ),
                                      decoration:
                                          AppDecoration.outlineBlack.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder18,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgLink,
                                            height: 29.adaptSize,
                                            width: 29.adaptSize,
                                            margin: EdgeInsets.only(top: 1.v),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 28.h,
                                              top: 4.v,
                                              bottom: 5.v,
                                            ),
                                            child: Text(
                                              "Login with Linkedin",
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 265.v),
                              child: CustomIconButton(
                                height: 72.v,
                                width: 69.h,
                                padding: EdgeInsets.all(7.h),
                                alignment: Alignment.bottomCenter,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFingerprint,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 353.v),
                                child: Text(
                                  "Login wit touch ID",
                                  style: CustomTextStyles
                                      .bodyMediumTrebuchetMSGray700,
                                ),
                              ),
                            ),
                            _buildEmail(context),
                            _buildPassword(context),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse11,
                              height: 903.v,
                              width: 216.h,
                              alignment: Alignment.centerRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle19,
                              height: 163.v,
                              width: 385.h,
                              radius: BorderRadius.vertical(
                                top: Radius.circular(33.h),
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.h),
      child: CustomCheckboxButton(
        text: "Remember password",
        value: rememberpassword,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          rememberpassword = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
      margin: EdgeInsets.only(
        left: 45.h,
        right: 17.h,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToYellowDecoration,
      buttonTextStyle: CustomTextStyles.bodyMediumTrebuchetMSPrimary,
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomOutlinedButton(
      width: 151.h,
      text: "Register",
      margin: EdgeInsets.only(
        right: 53.h,
        bottom: 392.v,
      ),
      alignment: Alignment.bottomRight,
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebook(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "Login with facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 28.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 29.adaptSize,
          width: 29.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWithInstagram(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "Login with Instagram",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 28.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgInstagram1,
          height: 29.adaptSize,
          width: 29.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 270.v),
      child: CustomTextFormField(
        width: 312.h,
        controller: emailController,
        hintText: "Email Address",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.topCenter,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 13.v, 12.h, 10.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 47.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 339.v),
      child: CustomTextFormField(
        width: 312.h,
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        alignment: Alignment.topCenter,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 11.v, 13.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLockBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 47.v,
        ),
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL23,
        filled: true,
        fillColor: theme.colorScheme.primary,
      ),
    );
  }
}
