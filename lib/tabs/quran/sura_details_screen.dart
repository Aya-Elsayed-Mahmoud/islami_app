import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app1/app_theme.dart';
import 'package:islami_app1/tabs/quran/quran_tab.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = '/sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}
//
class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat = [];
  late SuraDetailsArgs args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ayat.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemBuilder: (_, index) => Text(
                ayat[index],
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              itemCount: ayat.length,
            ),
          ),
        ));
  }

  Future<void> loadSuraFile() async {
    String sura =
        await rootBundle.loadString('assets/files/${args.index + 1}.text');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}
