import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';

class SubPageAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback onTap;
  SvgPicture? icon1;
  SvgPicture? icon2;
  SvgPicture? icon3;
  double? elev;
  bool? showLeading;
  SubPageAppbar({
    super.key,
    required this.text,
    this.showLeading,
    this.icon1,
    this.icon2,
    this.icon3,
    this.elev,
    required this.onTap,
  });

  @override
  State<SubPageAppbar> createState() => _SubPageAppbarState();

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);
}

class _SubPageAppbarState extends State<SubPageAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: widget.elev,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: (widget.showLeading ?? true) ? IconButton(
        onPressed: widget.onTap,
        icon: const Icon(Icons.arrow_back_sharp,
            color: Color.fromARGB(255, 100, 100, 100)),
      ) : null ,
      title: Text(
        widget.text,
        style: TCTypography.of(context).text_18_bold.copyWith(
              color: const Color.fromARGB(255, 100, 100, 100),
            ),
      ),
      actions: [
        if(  (widget.showLeading ?? true))...[widget.icon1 != null
            ? GestureDetector(
                child: Align(
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: widget.icon1),
                  ),
                ),
                onTap: () {})
               : const SizedBox(),
        widget.icon2 != null
            ? Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                    child: Align(
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: widget.icon2),
                      ),
                    ),
                    onTap: () => null),
              )
            : const SizedBox(),
        widget.icon3 != null
            ? Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: Align(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 161, 29, 51),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: widget.icon3),
                    ),
                  ),
                  onTap: () => MainNavigation.push(
                    context,
                    const MainNavigation.cart(false, false, false, false),
                  ),
                ),
              )
            : const SizedBox()]
      ],
    );
  }
}
