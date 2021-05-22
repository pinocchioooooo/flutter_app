import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(height: kDefaultSpacing),
                      FlutterLogo(size: 80),
                      SizedBox(height: kDefaultSpacing),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '欢迎登录',
                            style: TextStyle(
                              color: kPrimaryColorLight,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .fontSize,
                            ),
                          ),
                          Text(
                            '武汉市某某人名医院医废通',
                            style: TextStyle(
                              color: kPrimaryColorLight,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .fontSize,
                            ),
                          )
                        ],
                      ),
                      LoginArea(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultSpacing),
                    child: Text(
                      '湖北武汉某某有限公司技术支持',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.png'), fit: BoxFit.fitWidth),
      ),
      child: this.child,
    );
  }
}

class LoginArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.all(kDefaultSpacing),
      padding: const EdgeInsets.all(kDefaultSpacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color(0xccffffff),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.people),
                labelText: '用户名',
                errorText: null,
              ),
            ),
          ),
          SizedBox(height: kDefaultSpacing),
          Container(
            height: 50,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
                labelText: '用户密码',
                errorText: null,
              ),
            ),
          ),
          SizedBox(height: kDefaultSpacing),
          MaterialButton(
            child: Text("登 录"),
            minWidth: double.infinity,
            height: 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(fullSize),
            ),
            textColor: Colors.white,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
