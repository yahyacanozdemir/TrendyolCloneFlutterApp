import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CreateFastCat_Icon_OnTop extends StatefulWidget {
  final Color color_value;
  final String cat_name;
  final bool isLast;
  final String url_address;
  final bool isGridLY;

  const CreateFastCat_Icon_OnTop({Key key, this.color_value, this.cat_name, this.isLast, this.url_address,this.isGridLY}) : super(key: key);



  @override
  _CreateFastCat_Icon_OnTopState createState() => _CreateFastCat_Icon_OnTopState();
}

class _CreateFastCat_Icon_OnTopState extends State<CreateFastCat_Icon_OnTop> {



  @override
  Widget build(BuildContext context) {
      if (widget.isLast) {
        if (widget.url_address != "") {
          return create_cat_card();
        }
        else {
          return create_cat_card();
        }
      }
      else {
        if (widget.url_address != "") {
          return Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: widget.color_value,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(widget.url_address)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.cat_name,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
        }
        else {
          return Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: widget.color_value,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.cat_name,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
        }
      }
  }

  
  Padding create_cat_card() {
      return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: widget.color_value,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(widget.url_address),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              widget.cat_name,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      );
  }
}
