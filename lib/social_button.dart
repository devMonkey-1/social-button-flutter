library social_button;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ButtonType { google, facebook, twitter, apple }

class SocialButton extends StatefulWidget {
  final ButtonType type;
  const SocialButton({super.key, required this.type});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      textColor: Colors.black,
      elevation: 5,
      child: Row(
        children: [
          if (widget.type == ButtonType.google)
            const Icon(FontAwesomeIcons.google),
          if (widget.type == ButtonType.facebook)
            const Icon(FontAwesomeIcons.facebook),
          if (widget.type == ButtonType.twitter)
            const Icon(FontAwesomeIcons.xTwitter),
          if (widget.type == ButtonType.apple)
            const Icon(FontAwesomeIcons.apple),
          if(widget.type == ButtonType.google)
          const Text('Login with Google'),
          if(widget.type == ButtonType.facebook)
          const Text('Login with Facebook'),
          if(widget.type == ButtonType.twitter)
          const Text('Login with Twitter'),
          if(widget.type == ButtonType.apple)
          const Text('Login with Apple'),
          
        ],
      ),
    );
  }
}
