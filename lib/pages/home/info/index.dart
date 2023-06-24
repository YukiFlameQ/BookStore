import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/info/item_widget.dart';

import 'data.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({Key? key, this.showTitle = false, this.dataList = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showTitle)
          Container(
            padding: const EdgeInsets.only(left: 7),
            alignment: Alignment.centerLeft,
            child: const Text(
              'New Information',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
        Column(
          children: dataList.map((item) => ItemWidget(data: item)).toList(),
        )
      ],
    );
  }
}
