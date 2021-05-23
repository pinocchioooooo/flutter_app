import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: kPrimaryColorLight),
                          ),
                          Text(
                            '武汉市某某人名医院医废通',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: kPrimaryColorLight),
                          )
                        ],
                      ),
                      FormArea(),
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

class FormArea extends StatefulWidget {
  @override
  _FormAreaState createState() => _FormAreaState();
}

class _FormAreaState extends State<FormArea> {
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String password = '';

  void submit() {
    var form = _formKey.currentState;
    if (form.validate()) {
      print("验证成功");
    }
  }

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
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.people),
                labelText: '用户名',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入用户名';
                }
                return null;
              },
              onSaved: (userName) {
                userName = userName;
              },
            ),
            SizedBox(height: kDefaultSpacing),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
                labelText: '用户密码',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入用户密码';
                }
                return null;
              },
              onSaved: (userName) {
                userName = userName;
              },
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
              onPressed: submit,
            ),
          ],
        ),
      ),
    );
  }
}
