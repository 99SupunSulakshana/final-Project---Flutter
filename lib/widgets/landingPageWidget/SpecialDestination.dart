// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final String Img;
  final String title;
  final String Description;

  const PopularCard({
    Key? key,
    required this.Img,
    required this.title,
    required this.Description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0, top: 10.0),
      padding: const EdgeInsets.all(20.0),
      width: 220.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 20.0,
              spreadRadius: 0.0,
              offset: const Offset(5.0, 5.0)),
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 104,
                decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 20.0,
                        spreadRadius: 0.0,
                        offset: const Offset(5.0, 5.0)),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    //color: Colors.grey,
                    width: 1,
                  ),
                  // borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(Img), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                child: IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                  color: Colors.red,
                ),
                right: 0,
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(Description + "...",
              maxLines: 3,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 15.0, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}
