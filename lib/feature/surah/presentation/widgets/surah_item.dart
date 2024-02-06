import 'package:flutter/material.dart';
import 'package:surahs/common/color_utils.dart';
import 'package:surahs/feature/surah/data/models/surah.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({super.key, required this.surahItem});
  final Surah surahItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorUtils.primaryColor,
      child: ListTile(
        title: Text(
          '${surahItem.number}. ${surahItem.name}',
          style: const TextStyle(
            color: ColorUtils.primaryTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: ColorUtils.primaryTextColor,
        ),
      ),
    );
  }
}
