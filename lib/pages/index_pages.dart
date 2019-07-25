import 'package:flutter/material.dart';
import 'drawer_page.dart';
import 'body_page.dart';
import 'text_field_demo.dart';
import 'recording_page.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Traslate'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            BodyPage(),   //翻译选择及转换
            TextFieldDemo(),   //翻译内容
            Container(height: 10,),
            RecordingTranslate(),   //多种转换方法
          ],
        ),
      ),
      drawer: DrawerPage(),   //左侧抽屉
    );
  }
}
