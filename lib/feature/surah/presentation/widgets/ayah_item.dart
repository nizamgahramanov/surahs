import 'package:flutter/material.dart';
import 'package:surahs/common/color_utils.dart';
import 'package:surahs/feature/surah/data/models/ayah.dart';

class AyahItem extends StatelessWidget {
  const AyahItem({super.key, required this.ayahItem});
  final Ayah ayahItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: ColorUtils.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayahItem.madinahShrift,
                  style: const TextStyle(
                    color: ColorUtils.primaryTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ayahItem.translit,
                  style: const TextStyle(
                    color: ColorUtils.primaryTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ayahItem.translation,
                  style: const TextStyle(
                    color: ColorUtils.primaryTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
