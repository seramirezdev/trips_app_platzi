import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String review;
  final String comment;
  final String autor;

  Review({Key key, this.pathImage, this.review, this.comment, this.autor})
      : assert(pathImage != null),
        assert(review != null),
        assert(comment != null),
        assert(autor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Text(
      autor,
      style: Theme.of(context).textTheme.subtitle.copyWith(
        fontSize: 18.0
      ),
    );

    final userReviews = Text(
      review,
      style: Theme.of(context).textTheme.subtitle.copyWith(
        color: Colors.grey
      ),
    );

    final userComment = Text(
      comment,
      style: Theme.of(context).textTheme.subtitle,
    );

    final userDetail = Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[userName, userReviews, userComment],
      ),
    );

    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      alignment: Alignment.center,
      height: 90.0,
      child: Row(
        children: <Widget>[photo, userDetail],
      ),
    );
  }
}
