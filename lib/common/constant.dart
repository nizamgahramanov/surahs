import 'package:surahs/feature/surah/data/models/ayah.dart';
import 'package:surahs/feature/surah/data/models/surah.dart';

class SurahData {
  static List<Surah> surahList = [
    Surah(
      number: 1,
      name: "Al-Fatiha",
      ayahs: [
        Ayah(
          madinahShrift: "مَالِكِ يَوْمِ الدِّينِ",
          translit: "Maliki yawmi ad-deen",
          translation: "Во имя Аллаха, Милостивого, Милосердного!",
        ),
        Ayah(
          madinahShrift: ' الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
          translit: 'Al-Ĥamdu Lillahi Rabbi Al-`Ālamīna',
          translation: 'Хвала Аллаху, Господу миров,',
        ),
        Ayah(
          madinahShrift: ' الرَّحْمَنِ الرَّحِيم',
          translit: 'Ar-Raĥmāni Ar-Raĥīmi',
          translation: 'Милостивому, Милосердному,',
        ),
        Ayah(
          madinahShrift: 'مَالِكِ يَوْمِ الدِّينِ',
          translit: 'Māliki Yawmi Ad-Dīni',
          translation: 'Властелину Дня воздаяния!',
        ),
        Ayah(
          madinahShrift: 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
          translit: "'Īyāka Na`budu Wa 'Īyāka Nasta`īnu",
          translation:
              'Тебе одному мы поклоняемся и Тебя одного молим о помощи.',
        ),
        Ayah(
          madinahShrift: 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
          translit: "Ahdinā Aş-Şirāţa Al-Mustaqīma",
          translation: 'Веди нас прямым путем,',
        ),
        Ayah(
          madinahShrift:
              'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
          translit:
              "Şirāţa Al-Ladhīna 'An`amta `Alayhim Ghayri Al-Maghđūbi `Alayhim Wa Lā Ađ-Đāllīna",
          translation:
              'путем тех, кого Ты облагодетельствовал, не тех, на кого пал гнев, и не заблудших.',
        ),
      ],
    ),
    Surah(
      number: 2,
      name: 'Al-Bakara',
      ayahs: [
        Ayah(
          madinahShrift: 'الم',
          translit: "'Alif-Lām-Mīm",
          translation: 'Алиф. Лам. Мим.',
        ),
      ],
    ),
    Surah(
      number: 3,
      name: 'Ali-Imran',
      ayahs: [
        Ayah(
          madinahShrift: 'الم',
          translit: "'Alif-Lām-Mīm",
          translation: 'Алиф. Лам. Мим.',
        ),
        Ayah(
          madinahShrift: 'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ',
          translit: "Al-Lahu Lā 'Ilāha 'Illā Huwa Al-Ĥayyu Al-Qayyūmu",
          translation: 'Аллах - нет божества, кроме Него, Живого, Вседержителя.',
        ),
        Ayah(
          madinahShrift:'نَزَّلَ عَلَيْكَ الْكِتَابَ بِالْحَقِّ مُصَدِّقًا لِّمَا بَيْنَ يَدَيْهِ وَأَنزَلَ التَّوْرَاةَ وَالْإِنجِيلَ',
          translit: "Nazzala `Alayka Al-Kitāba Bil-Ĥaqqi Muşaddiqāan Limā Bayna Yadayhi Wa 'Anzala At-Tawrāata Wa Al-'Injīla",
          translation: 'Он ниспослал тебе Писание с истиной в подтверждение того, что было до него. Он ниспослал Таурат и Инджил,',
        ),
      ],
    ),
  ];
}
