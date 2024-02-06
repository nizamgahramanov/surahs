import 'package:flutter/material.dart';
import 'package:surahs/common/constant.dart';
import 'package:surahs/common/widget/custom_app_bar.dart';
import 'package:surahs/common/color_utils.dart';
import 'package:surahs/feature/surah/data/models/surah.dart';
import 'package:surahs/feature/surah/presentation/pages/surah_detail_screen.dart';
import 'package:surahs/feature/surah/presentation/widgets/surah_item.dart';

class SurahScreen extends StatefulWidget {
  static const routeName = '/surah';

  const SurahScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _nameFocusNode = FocusNode();
  final _numberFocusNode = FocusNode();
  final _addSurahForm = GlobalKey<FormState>();
  var surahs = SurahData.surahList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorUtils.primaryColor,
      appBar: const CustomAppBar(title: "Surələr"),
      body: _listView(surahs),
    );
  }

  Widget _listView(List<Surah> surahs) {
    return surahs.isEmpty
        ? const Center(
            child: Text(
              "Surələr daxil edilməyib",
              style: TextStyle(
                color: ColorUtils.primaryTextColor,
              ),
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: surahs.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurahDetailScreen(
                            currentIndex: index,
                          ),
                        ),
                      );
                    },
                    child: SurahItem(surahItem: surahs[index]),
                  ),
                ],
              );
            },
          );
  }
}
