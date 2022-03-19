import 'package:flutter/material.dart';
import 'package:lesson_three/details_page.dart';
import 'package:lesson_three/words.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  get list => Words.list;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var orientation = mediaQueryData.orientation;

    return orientation == Orientation.portrait
        ? forPortrait(context)
        : forLandscape();
  }

  Widget myWord(Words words, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              words: words,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 8),
              height: 64,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    words.word,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    words.translation,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget forPortrait(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Words"),
      ),
      body: ListView(
        children: [
          myWord(list[0], context),
          myWord(list[1], context),
          myWord(list[2], context),
          myWord(list[3], context),
          myWord(list[4], context),
          myWord(list[5], context),
          myWord(list[6], context),
          myWord(list[7], context),
          myWord(list[8], context),
          myWord(list[9], context),
          myWord(list[10], context),
          myWord(list[11], context),
        ],
      ),
    );
  }

  Widget forLandscape() {

    return Scaffold(
      appBar: AppBar(
        title: Text("Words"),
      ),
      body: Row(
        children: [
          Container(
            width: 240,
            child: ListView(
              children: [
                myWord(list[0], context),
                myWord(list[1], context),
                myWord(list[2], context),
                myWord(list[3], context),
                myWord(list[4], context),
                myWord(list[5], context),
                myWord(list[6], context),
                myWord(list[7], context),
                myWord(list[8], context),
                myWord(list[9], context),
                myWord(list[10], context),
                myWord(list[11], context),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
