import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnTap;
  final String secondaryLabel;
  final VoidCallback secondaryOnTap;
  //final bool enablePrimaryColor;
  const SetLabelButtons({
    Key key,
    this.primaryLabel,
    this.primaryOnTap,
    this.secondaryLabel,
    this.secondaryOnTap,
  }) : super(key: key);
  // this.enablePrimaryColor = false,
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnTap,
                  //style: enablePrimaryColor ?? TextStyles.buttonBoldPrimary,
                )),
                DividerVerticalWidget(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnTap,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
