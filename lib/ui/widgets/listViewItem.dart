import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  final Color color;
  final String imageAsset;

  const ListViewItem({Key key, this.color, this.imageAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            width: MediaQuery.of(context).size.width * 0.33,
            child: Image.asset(
              imageAsset,
            ),
          ),
        ),
      ],
    );
  }
}
