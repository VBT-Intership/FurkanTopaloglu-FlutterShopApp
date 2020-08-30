import 'package:flutter/material.dart';
import 'package:shop_app/ui/shared/text_styles.dart';
import 'package:shop_app/ui/shared/ui_helpers.dart';
import 'package:shop_app/ui/widgets/tag.dart';

class ItemCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String tag;
  final String tag1;
  final String money;
  final String description;
  final Color color;

  const ItemCard(
      {Key key,
      this.imageAsset,
      this.title,
      this.tag,
      this.tag1,
      this.money,
      this.description,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildImageContainer(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle(),
              verticalSpaceSmall,
              buildItemTags(),
              verticalSpaceSmall,
              buildItemDescription(),
            ],
          )
        ],
      ),
    );
  }

  Text buildTitle() {
    return Text(
      title,
      style: subHeaderStyle,
    );
  }

  Row buildItemTags() {
    return Row(
      children: [
        Tags(
          tagName: tag,
          tagColor: Colors.blueAccent,
        ),
        horizontalSpaceMedium,
        Tags(
          tagName: tag1,
          tagColor: Colors.orangeAccent,
        ),
      ],
    );
  }

  Row buildItemDescription() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          description,
          style: descriptionStyle,
        ),
        horizontalSpaceLarge,
        Text(
          money,
          style: itemMoneyTextStyle,
        )
      ],
    );
  }

  Container buildImageContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Image.asset(imageAsset),
    );
  }
}
