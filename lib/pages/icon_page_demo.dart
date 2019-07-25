import 'package:flutter/material.dart';

/**
 * 翻译录音等功能实现
 */
class IconPageDemo extends StatefulWidget {
  @override
  _IconPageDemoState createState() => _IconPageDemoState();
}

class _IconPageDemoState extends State<IconPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: 10.0,
        ),
        ActionButton(
          title: '相机',
          icon: Icons.camera_alt,
        ),
        ActionButton(
          title: '手写',
          icon: Icons.border_color,
        ),
        ActionButton(
          title: '对话',
          icon: Icons.comment,
        ),
        ActionButton(
          title: '语音',
          icon: Icons.keyboard_voice,
        ),
        Container(
          width: 10.0,
        ),
      ],
    );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage image;
  ActionButton({Key key, @required this.title, this.icon, this.image}): super(key:key);

  @override
  ActionButtonState createState() => ActionButtonState();
}

class ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 2.0,
        bottom: 2.0,
      ),
      child: Column(
        children: <Widget>[
          _displayIcon(),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayIcon() {
    if(widget.icon != null){
      return Icon(
        widget.icon,
        color: Color(0xff3f51b5),
        size: 25.0,
      );
    } else if(widget.image != null){
        return ImageIcon(
          widget.image,
          color: Color(0xff3f51b5),
          size: 25.0,
        );
    } else {
      return Container();
    }
  }
}

