import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.ontap,
    this.icon,
    this.colorText, this.disabled,
  });

  final String text;
  final VoidCallback ontap;
  final Widget? icon;
  final Color? colorText;
  final bool? disabled;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.disabled==true?null:widget.ontap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.88,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: widget.disabled==true?Colors.black26:Color.fromARGB(255, 161, 29, 52),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon ?? const SizedBox(),
            Center(
              child: Text(
                '${widget.text}',
                style: TCTypography.of(context).text_14_bold.copyWith(
                      color: widget.colorText ??
                          const Color.fromARGB(255, 234, 237, 239),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
