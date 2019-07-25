import 'package:flutter/material.dart';
import '../pages/index_pages.dart';

class OpenAnimation extends StatefulWidget {
  @override
  _OpenAnimationState createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation> with SingleTickerProviderStateMixin{

  AnimationController _controller;    //动画控制器
  Animation _animation;   //动画

  @override
  void initState() {    //初始化
    super.initState();

    _controller = AnimationController(    //设置动画时间，并且需要继承SingleTickerProviderStateMinin
      duration: Duration(milliseconds: 2500),
      vsync: this
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    //添加状态监听,当动画完成时会进行跳转
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context){
            return IndexPage();
          }),
        (route) => route == null);
      }
    });

    _controller.forward();    //控制器控制播放

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(
        opacity: _controller,
//        child: Image.network(
//          'https://img.liulebin.cn/image/public/bossopen_animation.jpg',
//          fit: BoxFit.cover,
//        )
        child: Image.asset('images/open_animation.jpg', fit: BoxFit.cover,),
      ),
    );
  }
}
