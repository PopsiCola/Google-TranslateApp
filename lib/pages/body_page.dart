import 'package:flutter/material.dart';

/**
 * 翻译功能页面
 */
class BodyPage extends StatefulWidget {
  BodyPage({Key key}):super(key: key);
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  final Color primaryColor = Colors.blue[600];
  String _firstLanguage = "英语";
  String _secondLanguage = "中文(简体)";
  String _thirdLanguage = "英语";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(   //溅墨
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._firstLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Icon(Icons.arrow_drop_down, color: primaryColor,),
                  ],
                )
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.import_export, color: primaryColor,),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(   //溅墨
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        this._secondLanguage,
                        style: TextStyle(color: primaryColor),
                      ),
                      Icon(Icons.arrow_drop_down, color: primaryColor,),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
