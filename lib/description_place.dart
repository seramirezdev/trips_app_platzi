import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String desc;

  DescriptionPlace({Key key, this.namePlace, this.stars, this.desc})
      : assert(namePlace != null),
        assert(stars != null),
        assert(desc != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final stars = Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: <Widget>[
          star(1),
          star(1),
          star(1),
          star(2),
          star(3),
        ],
      ),
    );

    final titleStarts = Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            namePlace,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.display1.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            textAlign: TextAlign.left,
          ),
          stars,
        ],
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
      child: Text(
        desc,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 250),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[titleStarts, description],
      ),
    );
  }

  Widget star(int withBorder) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      alignment: Alignment.center,
      child: Icon(
        withBorder == 1
            ? Icons.star
            : withBorder == 2 ? Icons.star_half : Icons.star_border,
        size: 20,
        color: Colors.amber,
      ),
    );
  }
}
