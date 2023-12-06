import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({super.key, this.text=""});
final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(text),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
