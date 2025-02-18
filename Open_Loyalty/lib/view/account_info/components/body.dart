import 'package:flutter/material.dart';
import 'package:open_loyalty/view/account_info/components/action_button.dart';
import 'package:open_loyalty/view/account_info/components/detail_info.dart';
import 'package:open_loyalty/view/account_info/components/id_with_avatar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[IdWithAvatar(key: null as Key,), DetailInfo(), ActionButton()],
      ),
    );
  }

}
