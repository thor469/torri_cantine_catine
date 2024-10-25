import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';

class SecondaryButton extends StatefulWidget {
  const SecondaryButton({super.key, required this.ontap, required this.text});

  final VoidCallback ontap;
  final String text;

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.88,
        height: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: const Color.fromARGB(255, 161, 29, 51))),
        child: Center(
          child: Text(
            widget.text,
            style: TCTypography.of(context).text_14_bold.copyWith(
                  color: const Color.fromARGB(255, 161, 29, 51),
                ),
          ),
        ),
      ),
    );
  }
}
