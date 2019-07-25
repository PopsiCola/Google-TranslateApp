import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Popsi Cola'),
            accountEmail: Text('popsicola@163.com'),

            currentAccountPicture: CircleAvatar(    //设置圆形头像
              backgroundImage: NetworkImage('https://img.liulebin.cn/image/public/my/%E5%A4%B4%E5%83%8F.png'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/bg_account_switcher.png', ),
                )
            ),
          ),
          ListTile(
            title: Text(
              '首页',
              style: TextStyle(color: Colors.blue[600]),),
            leading: Icon(Icons.home, color: Colors.blue[600],),
            onTap: (){},
          ),
          ListTile(
            title: Text('翻译收藏夹'),
            leading: Icon(Icons.favorite_border),
            onTap: (){},
          ),
          ListTile(
            title: Text('离线翻译'),
            leading: Icon(Icons.translate),
            onTap: (){},
          ),
          ListTile(
            title: Text('设置'),
            leading: Icon(Icons.settings),
            onTap: (){},
          ),
        ],
      )
    );
  }
}
