import 'package:flutter/material.dart';

class CreateScrollingVerticalParts extends StatefulWidget {
  final String bcgr_url;
  final Color color_value;

  const CreateScrollingVerticalParts({Key key, this.bcgr_url, this.color_value,}) : super(key: key);

  @override
  _CreateScrollingVerticalPartsState createState() => _CreateScrollingVerticalPartsState();
}

class _CreateScrollingVerticalPartsState extends State<CreateScrollingVerticalParts> {
  @override
  Widget build(BuildContext context) {
    if (widget.bcgr_url == "o") {
      return Container(
        height: 200,
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: widget.color_value,
        ),
        child: Image.network("https://i.hizliresim.com/eaoQ8i.png"),
      );
    }
    if (widget.bcgr_url == "g") {
      return Container(
        height: 200,
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: widget.color_value,
        ),
        child: Image.network("https://i.hizliresim.com/avQ51v.png"),
      );
    }

    if (widget.bcgr_url == "OO") {
      return Container(
        height: 290,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: widget.color_value,
        ),
        child: Image.network("https://i.hizliresim.com/eaoQ8i.png"),
      );
    }

    if (widget.bcgr_url == "OG") {
      return Container(
        height: 490,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: widget.color_value,
        ),
        child: Image.network("https://i.hizliresim.com/avQ51v.png"),
      );
    }

    else {
      return Container(
        height: 200,
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: widget.color_value,
          image: DecorationImage(
              image: NetworkImage(widget.bcgr_url), fit: BoxFit.fill),
        ),
      );
    }
  }

}

