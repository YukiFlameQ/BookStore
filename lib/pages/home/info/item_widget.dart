import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/info/data.dart';

var textStyle = const TextStyle(fontSize: 14, color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;

  const ItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.network(
            data.image,
            height: 150,
            width: 120,
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.source, style: textStyle),
                  Text(data.price, style: textStyle),
                  Text(data.time, style: textStyle),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}