# social_button_flutter

[![Flutter Community: social_button_flutter](https://github.com/devMonkey-1/social-button-flutter)

The *free*
as set of Social Login - based on brand guidelines.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  social_button_flutter: <latest_version>
```

## Usage

```dart
import 'package:social_button_flutter/social_button_flutter.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return SocialButton(
      type:ButtonType.google
     );
  }
}
```
