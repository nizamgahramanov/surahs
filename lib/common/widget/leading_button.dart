import 'package:flutter/material.dart';
import 'package:surahs/common/color_utils.dart';

class LeadingButton extends StatelessWidget {
  const LeadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: ColorUtils.primaryTextColor,
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
