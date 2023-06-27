import 'package:flutter/material.dart';

var textStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

class TabProfileHeader extends StatelessWidget {
  const TabProfileHeader({Key? key}) : super(key: key);

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text('Login', style: textStyle),
                  ),
                  Text('  /  ', style: textStyle),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text('Register', style: textStyle),
                  ),
                ],
              ),
              const Text(
                'Login to experience more',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginBuilder(BuildContext context) {
    String userImage =
        'https://tva1.sinaimg.cn/large/008i3skNgy1gsuhtensa6j30lk0li76f.jpg';
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '用户名',
                    style: textStyle,
                  ),
                ],
              ),
              const Text(
                '查看编辑个人资料',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    // ignore: dead_code
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
