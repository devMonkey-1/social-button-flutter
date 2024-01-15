library social_button;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ButtonType { google, facebook, twitter, apple }

enum ButtonSize { mini, large }

enum ButtonShape { custom, rectangular, pill }

class SocialButton extends StatelessWidget {
  final ButtonType type;
  final ButtonSize size;
  final ButtonShape shape;
  final bool? isDarkMode;
  final bool? isBorderColor;
  final double? borderRadius;
  final double? elevation;
  final String? buttonText;
  final VoidCallback onPressed;
  final ThemeData? themeData;
  final Widget? iconWidget;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  const SocialButton(
      {super.key,
      required this.type,
      this.iconWidget,
      this.size = ButtonSize.large,
      this.shape = ButtonShape.rectangular,
      this.themeData,
      required this.onPressed,
      this.isDarkMode,
      this.buttonText,
      this.elevation = 0.0,
      this.color,
      this.textColor,
      this.isBorderColor,
      this.borderColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themeData ??
          ThemeData(
            brightness: isDarkMode == true ? Brightness.dark : Brightness.light,
          ),
      child: MaterialButton(
        padding: const EdgeInsets.all(2),
        onPressed: () {
          onPressed();
        },
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black),
        textColor: textColor ??
            (Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black),
        elevation: elevation,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ??
                (Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.black),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(
            shape == ButtonShape.pill
                ? 30
                : shape == ButtonShape.custom
                    ? 8
                    : 0,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                if (type == ButtonType.google)
                  if (iconWidget != null)
                    iconWidget!
                  else
                    const Icon(FontAwesomeIcons.google),
                if (type == ButtonType.facebook)
                  const Icon(FontAwesomeIcons.facebook),
                if (type == ButtonType.twitter)
                  const Icon(
                    FontAwesomeIcons.xTwitter,
                    size: 20,
                  ),
                if (type == ButtonType.apple)
                  const Icon(
                    FontAwesomeIcons.apple,
                    size: 20,
                  ),
              ]),
            ),
            if (buttonText != null) Text(buttonText!),
            if (buttonText == null)
              Text((type == ButtonType.google
                  ? "Sign in with Google"
                  : type == ButtonType.apple
                      ? "Sign in with Apple"
                      : type == ButtonType.twitter
                          ? "Sign in with Twitter"
                          : "Sign in with Facebook")),
          ],
        ),
      ),
    );
  }
}
