import 'package:naimur_rahman_s_application1/presentation/iphone_14_15_pro_one_page/iphone_14_15_pro_one_page.dart';
import 'package:flutter/material.dart';
import 'package:naimur_rahman_s_application1/core/app_export.dart';

class Iphone1415ProOneTabContainerScreen extends StatefulWidget {
  const Iphone1415ProOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProOneTabContainerScreenState createState() =>
      Iphone1415ProOneTabContainerScreenState();
}

class Iphone1415ProOneTabContainerScreenState
    extends State<Iphone1415ProOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 393.h,
          child: Container(
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 50.v),
                Text(
                  "Login",
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 230.h,
                    margin: EdgeInsets.only(right: 69.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By signing in you are agreeing our ",
                            style: CustomTextStyles.headlineSmallff6b5e5e,
                          ),
                          TextSpan(
                            text: "Term and privacy polic",
                            style: CustomTextStyles.headlineSmallff0386d0,
                          ),
                          TextSpan(
                            text: "y",
                            style: CustomTextStyles.headlineSmallff036bb9,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 33.v),
                Container(
                  height: 35.v,
                  width: 135.h,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.lightBlue800,
                    unselectedLabelColor: appTheme.gray500,
                    tabs: [
                      Tab(
                        child: Text(
                          "Login",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Register",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 605.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Iphone1415ProOnePage(),
                      Iphone1415ProOnePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
