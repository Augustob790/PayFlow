import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnTap;
  final String secondaryLabel;
  final VoidCallback secondaryOnTap;
  final String title;
  final String subtitle;
  const BottomSheetWidget({
    Key key,
    this.primaryLabel,
    this.primaryOnTap,
    this.secondaryLabel,
    this.secondaryOnTap,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                            text: title,
                            style: TextStyles.buttonBoldHeading,
                            children: [
                              TextSpan(
                                text: "\n$subtitle",
                                style: TextStyles.buttonHeading,
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    SetLabelButtons(
                      //enablePrimaryColor: true,
                      primaryLabel: primaryLabel,
                      primaryOnTap: primaryOnTap,
                      secondaryLabel: secondaryLabel,
                      secondaryOnTap: secondaryOnTap,
                    ),
                    SizedBox(height: 2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
