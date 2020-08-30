import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/ui/shared/text_styles.dart';
import 'package:shop_app/ui/shared/ui_helpers.dart';
import 'package:shop_app/ui/widgets/itemCard.dart';
import 'package:shop_app/ui/widgets/listViewItem.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Column(
          children: [
            buildTitle(),
            buildListView(context),
            buildCategory(context),
            verticalSpaceMedium,
            buildItemListView(context),
          ],
        ));
  }

  Row buildCategory(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildHeartIcon(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular",
              style: subHeaderStyle,
            ),
            Text(
              "Monggo, entekno duwekmu!",
              style: descriptionStyle,
            )
          ],
        ),
        FaIcon(FontAwesomeIcons.arrowRight)
      ],
    );
  }

  Container buildHeartIcon(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.solidHeart,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }

  Container buildItemListView(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView(
        children: [
          ItemCard(
            imageAsset: "asset/banana.png",
            title: "Banana Goreng",
            tag: "Gorengan",
            tag1: "Makanan",
            description: "Warung Boyayuk",
            money: "Rp. 2.500",
            color: Colors.pinkAccent,
          ),
          verticalSpaceMedium,
          ItemCard(
            imageAsset: "asset/donat.png",
            title: "Banana Goreng",
            tag: "Gorengan",
            tag1: "Makanan",
            description: "Warung Boyayuk",
            money: "Rp. 2.500",
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '''What do you want 
to eat today?''',
                style: headerStyle,
              ),
            ],
          ),
          FaIcon(FontAwesomeIcons.search)
        ],
      ),
    );
  }

  Container buildListView(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ListViewItem(
            imageAsset: "asset/donat.png",
            color: Colors.lightBlue,
          ),
          ListViewItem(
            imageAsset: "asset/icecream.png",
            color: Colors.yellow,
          ),
          ListViewItem(
            imageAsset: "asset/donat.png",
            color: Colors.lightBlue,
          ),
          ListViewItem(
            imageAsset: "asset/icecream.png",
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: BackButton(
        color: Colors.black,
      ),
      actions: [
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.gripLines,
              color: Colors.black,
            ),
            onPressed: () {})
      ],
    );
  }
}
