import 'package:flutter/material.dart';
import 'package:shop_app/ui/shared/text_styles.dart';

class Tags extends StatelessWidget {
  final String tagName;
  final Color tagColor;

  const Tags({Key key, this.tagName, this.tagColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: tagColor,
      ),
      child: Text(
        tagName,
        textAlign: TextAlign.center,
        style: tagTextStyle,
      ),
    );
  }
}
