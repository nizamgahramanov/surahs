import 'package:flutter/material.dart';
import 'package:surahs/feature/surah/presentation/pages/surah_screen.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // widget.token!.log();
return const MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Surah App",
     home: SurahScreen()
   );
    
  }
}
