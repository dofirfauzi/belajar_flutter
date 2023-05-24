import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text(
          'Belajar Text Widget',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            Text(
              'Text Style',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'font family Roboto font size 16 font weight 100',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100),
            ),
            Text(
              'font family Roboto font size 16 font weight 300',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'font family Roboto font size 16 font weight 500',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Color(0XFFE55807),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Text Aligntment',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text of the printing and typesetting Ipsum is simply dummy',
              textAlign: TextAlign.left,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
              textAlign: TextAlign.right,
              style: TextStyle(backgroundColor: Colors.amber),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Text Decoration',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This is text decoration lineTrough',
              style: TextStyle(
                fontSize: 24,
                decorationStyle: TextDecorationStyle.wavy,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text(
              'This is text decoration underline',
              style: TextStyle(
                fontSize: 24,
                decorationStyle: TextDecorationStyle.wavy,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
