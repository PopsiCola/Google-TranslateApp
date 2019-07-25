import 'package:flutter/material.dart';
import 'icon_page_demo.dart';

/**
 * 文本域输入框
 */
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: <Widget>[
            TextDemo(),   //文本域显示
            IconPageDemo(),
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          top: 1.0,
          bottom: 2.0
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '点按即可输入文本',
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0
          ),
          maxLines: 3,    //设置最大行数
          cursorColor: Colors.grey,   //光标的颜色
          cursorWidth: 2.0,   //光标的宽度
        ),
    );
  }
}

