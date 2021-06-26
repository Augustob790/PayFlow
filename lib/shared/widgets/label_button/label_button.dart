import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final TextStyles style;
  final VoidCallback onPressed;
  const LabelButton({
    Key key,
    this.label,
    this.style,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyles.buttonHeading,
          //style: style ?? TextStyles.buttonHeading,
        ),
      ),
    );
  }
}
