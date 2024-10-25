import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class CharItem extends StatelessWidget {
  final String? text;
  final String title;
  final String img;
  const CharItem({
    super.key,
     this.text,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 21, 15, 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            img,
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TCTypography.of(context)
                      .text_14_bold
                      .copyWith(color: const Color.fromARGB(255, 99, 103, 106)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      text ?? "Descrizione non disponibile",
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
