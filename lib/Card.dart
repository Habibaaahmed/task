
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterapp/Products.dart';



class CardProduct extends StatefulWidget {
  final Products mob;
  const CardProduct ({Key? key, required this.mob}) : super(key: key);

  @override
  State<CardProduct> createState() => _CardProductState();
}
class _CardProductState extends State<CardProduct> {
  bool addedToCart = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        child: Container(

          width: 180,
          height: 300,
          color: Color(0xFFF2D5DB),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: Image.network(widget.mob.thumbnail!),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      widget.mob.name!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.mob.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 5),
                    RatingBar(
                      itemSize: 15,
                      initialRating: widget.mob.rating!,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                        full: _image('assets/heart.png'),
                        half: _image('assets/heart_half.png'),
                        empty: _image('assets/heart_border.png'),
                      ),
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${widget.mob.price!}"),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              addedToCart = !addedToCart;
                            });
                          },
                          icon: Icon(
                            Icons.shopping_cart_rounded,
                            size: 25,
                            color: addedToCart ? Colors.green : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image(String asset) {
    return Image.asset(
      asset,
      height: 30.0,
      width: 30.0,
      color: Colors.amber,
    );
  }
}
