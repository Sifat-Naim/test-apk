import 'package:flutter/material.dart';
import 'package:naimur_rahman_s_application1/core/utils/size_utils.dart';
import 'package:naimur_rahman_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumRobotoBlueA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueA700,
      );
  static get bodyMediumTrebuchetMSBlueA200 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: appTheme.blueA200,
      );
  static get bodyMediumTrebuchetMSDeeporange50001 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: appTheme.deepOrange50001,
      );
  static get bodyMediumTrebuchetMSGray400 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: appTheme.gray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumTrebuchetMSGray700 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumTrebuchetMSPrimary =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumTrebuchetMSff0386d0 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: Color(0XFF0386D0),
      );
  static get bodyMediumTrebuchetMSff356df8 =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: Color(0XFF356DF8),
      );
  static get bodyMediumTrebuchetMSff6b5e5e =>
      theme.textTheme.bodyMedium!.trebuchetMS.copyWith(
        color: Color(0XFF6B5E5E),
      );
  // Headline text style
  static get headlineSmallGray600 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get headlineSmallLightblue800 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlue800,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallRobotoLightblue800 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.lightBlue800,
      );
  static get headlineSmallff036bb9 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF036BB9),
      );
  static get headlineSmallff0386d0 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0386D0),
      );
  static get headlineSmallff6b5e5e => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF6B5E5E),
      );
  // Title text style
  static get titleLargeLightblue700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get titleLargeTrebuchetMSDeeporange500 =>
      theme.textTheme.titleLarge!.trebuchetMS.copyWith(
        color: appTheme.deepOrange500,
      );
}

extension on TextStyle {
  TextStyle get coda {
    return copyWith(
      fontFamily: 'Coda',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get trebuchetMS {
    return copyWith(
      fontFamily: 'Trebuchet MS',
    );
  }

  TextStyle get sakkalMajalla {
    return copyWith(
      fontFamily: 'Sakkal Majalla',
    );
  }
}
