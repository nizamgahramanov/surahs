import 'package:flutter/material.dart';
import 'package:surahs/common/color_utils.dart';
import 'package:surahs/common/constant.dart';
import 'package:surahs/common/widget/custom_app_bar.dart';
import 'package:surahs/feature/surah/data/models/surah.dart';
import 'package:surahs/feature/surah/presentation/widgets/ayah_item.dart';

class SurahDetailScreen extends StatefulWidget {
  const SurahDetailScreen({Key? key, required this.currentIndex})
      : super(key: key);
  final int currentIndex;

  @override
  State<SurahDetailScreen> createState() => _SurahDetailScreenState();
}

class _SurahDetailScreenState extends State<SurahDetailScreen> {
  late int changableIndex;

  @override
  void initState() {
    super.initState();
    changableIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List<Surah> surahs = SurahData.surahList;
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          if (changableIndex > 0) {
            setState(() {
              changableIndex--;
            });
          } else {
            Navigator.of(context).pop();
          }
        } else if (details.primaryVelocity! < 0) {
          if (changableIndex < SurahData.surahList.length - 1) {
            setState(() {
              changableIndex++;
            });
          }
        }
      },
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorUtils.primaryColor,
        appBar: CustomAppBar(
          title:
              '${surahs[changableIndex].number}. ${surahs[changableIndex].name}',
          automaticallyImplyLeading: true,
        ),
        body: PageView.builder(
            itemCount: SurahData.surahList.length,
            controller: PageController(initialPage: changableIndex),
            onPageChanged: (index) {
              setState(() {
                changableIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: surahs[index].ayahs.length,
                itemBuilder: (context, ayahIndex) {
                  return Column(
                    children: [
                      AyahItem(ayahItem: surahs[index].ayahs[ayahIndex]),
                    ],
                  );
                },
              );
            }),
      ),
    );
  }
}
