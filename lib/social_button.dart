library social_button;

import 'package:flutter/material.dart';

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
            Image.asset('assets/g-logo.png'),
          if (widget.type == ButtonType.facebook) const Icon(Icons.facebook),
          if (widget.type == ButtonType.twitter)
            Image.asset('assets/t-logo.png'),
          if (widget.type == ButtonType.apple) const Icon(Icons.apple),
          const Text('Login with Google'),
        ],
      ),
    );
  }
}
