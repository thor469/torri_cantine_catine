import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class AccountBottomItem extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  const AccountBottomItem({
    super.key,
    required this.icon,
    required this.isActive,
    required this.text,
  });

  @override
  State<AccountBottomItem> createState() => _AccountBottomItemState();
}

class _AccountBottomItemState extends State<AccountBottomItem> {
  LocalStorage storage = LocalStorage();
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.20,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 340),
            opacity: widget.isActive ? 1 : 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.12,
              height: 5,
              color: widget.isActive
                  ? const Color.fromARGB(255, 161, 29, 51)
                  : Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Icon(
              widget.icon,
              color: widget.isActive
                  ? const Color.fromARGB(255, 161, 29, 51)
                  : const Color.fromARGB(255, 99, 103, 106),
            ),
          ),
          Text(
            widget.text,
            style: TCTypography.of(context).text_10_bold.copyWith(
                  color: widget.isActive
                      ? const Color.fromARGB(255, 161, 29, 51)
                      : const Color.fromARGB(255, 99, 103, 106),
                ),
          ),
        ],
      ),
    );
  }
}
