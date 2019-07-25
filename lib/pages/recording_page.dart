import 'package:flutter/material.dart';
import '../const/const_page.dart';

class RecordingTranslate extends StatefulWidget {
  @override
  _RecordingTranslateState createState() => _RecordingTranslateState();
}

class _RecordingTranslateState extends State<RecordingTranslate> {

  List<Translate> _items = [
    Translate(
      'drawer',
      '抽屉',
      false
    ),
    Translate(
      'span',
      '跨度',
      false
    ),
    Translate(
      'scale',
      '规模',
      false
    ),
    Translate(
      'title',
      'subtitle',
      false
    ),
    Translate(
      'title',
      'subtitle',
      false
    ),
    Translate(
      'title',
      'subtitle',
      false
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index){
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index){

    return Container(
      padding: EdgeInsets.only(
        bottom: 2.0,
        left: 2.0,
        right: 2.0
      ),
      child: Card(
        margin: EdgeInsets.only(
          left: 8.0,
          right: 8.0
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 15.0,
            bottom: 15.0,
            right: 15.0
          ),
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _flexible(index),
              _collectin(index)
            ],
          )
        ),
      ),
    );
  }

  Widget _flexible(int index){
    return Flexible(     //柔性的
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            _items[index].title,
            style: TextStyle(
              fontSize: 24.0,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,    //当超出长度时，省略
          ),
          Text(
            _items[index].subTitle,
            style: TextStyle(
                color: Colors.grey
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,    //当超出长度时，省略
          ),
        ],
      ),
    );
  }

  Widget _collectin(int index){
    return IconButton(
        icon: Icon(
          _items[index].isCollection?Icons.favorite:Icons.favorite_border,
          color: _items[index].isCollection?Colors.yellow:Colors.black,
          size: 33.0,),
        onPressed: (){
          setState(() {
            _items[index].isCollection = !_items[index].isCollection;
          });
        }
    );
  }

}
