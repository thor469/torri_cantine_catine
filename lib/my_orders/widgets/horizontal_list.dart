import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  final String pathImage;
  const HorizontalList({super.key, required this.pathImage});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            height: 90,
            child: Image.network(
              widget.pathImage,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
