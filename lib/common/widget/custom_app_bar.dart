import 'package:flutter/material.dart';
import 'package:surahs/common/color_utils.dart';
import 'package:surahs/common/widget/leading_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  const CustomAppBar({
    super.key,
    required this.title,
    this.automaticallyImplyLeading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: ColorUtils.primaryTextColor,
        ),
      ),
      automaticallyImplyLeading: false,
      actions: [],
      leadingWidth: 70.0,
      leading: automaticallyImplyLeading ? const LeadingButton() : null,
      centerTitle: true,
      backgroundColor: ColorUtils.primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
