import 'package:flutter/material.dart';
import 'package:yugioh/detail.dart';
import 'package:yugioh/model.dart';

class GridViewList extends StatelessWidget {
  final List<Cardinfo> cardinfo;
  final List<CardImage> cardImages;

  GridViewList({Key key, this.cardinfo, this.cardImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
          itemCount: cardinfo.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 20 / 29,
          ),
          itemBuilder: (context, index) {
            return new GestureDetector(
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  '${cardinfo[index].cardImages[0].imageUrl}',
                  fit: BoxFit.cover,
                ),
                elevation: 3.0,
              ),
              onTap: () => onTapItem(context, cardinfo[index]),
            );
          }),
    );
  }

  void onTapItem(BuildContext context, Cardinfo post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
              cardinfo: post,
            ),
      ),
    );
  }
}
