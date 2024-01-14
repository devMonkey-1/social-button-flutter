import 'package:flutter_test/flutter_test.dart';
import 'package:social_button_flutter/social_button.dart';

void main() {
  test('adds one to input values', () {
    const socialButton = SocialButton(
      type: ButtonType.google,
    );
    expect(socialButton.type, ButtonType.google);
  });
}
