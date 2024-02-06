import 'package:surahs/feature/surah/data/models/ayah.dart';

class Surah {
  final int number;
  final String name;
  final List<Ayah> ayahs;

  Surah({
    required this.number,
    required this.name,
    required this.ayahs,
  });
}
