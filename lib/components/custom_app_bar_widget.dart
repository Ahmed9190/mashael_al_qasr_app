import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mashael_al_qasr_5/components/app_bar_shape.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

class CustomAppBarTrailingModel {
  IconData icon;
  void Function()? onPressed;

  CustomAppBarTrailingModel({
    required this.icon,
    this.onPressed,
  });
}

class CustomAppBar extends StatefulWidget {
  final String title;
  final bool? showBackButton;
  final void Function()? onPressBack;
  final CustomAppBarTrailingModel? trailing;
  final TextEditingController? searchController;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBackButton,
    this.onPressBack,
    this.trailing,
    this.searchController,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isSearching = false;

  void _toggleSearch() {
    if (isSearching && widget.searchController != null) {
      widget.searchController!.text = "";
    }
    setState(() {
      isSearching = !isSearching;
    });
    if (widget.trailing!.onPressed != null) widget.trailing!.onPressed!();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const SizedBox(height: 200.0),
          Positioned(
            width: MediaQuery.of(context).size.width,
            left: -30,
            child: const Opacity(
              opacity: 0.5,
              child: AppBarShape(
                customAppBarColor: primaryColor,
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: -15,
            left: -15,
            child: const Opacity(
              opacity: 0.65,
              child: AppBarShape(
                customAppBarColor: primaryColor,
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: -30,
            child: AppBarShape(
              customAppBarColor: primaryColor,
              child: isSearching
                  ? _renderSearchAppBar()
                  : _renderDefaultAppBar(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderSearchAppBar() {
    border([Color color = Colors.white]) => UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
        );
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _backButton(_toggleSearch),
        Expanded(
          child: TextField(
            controller: widget.searchController,
            autofocus: true,
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              border: border(Colors.white),
              focusedBorder: border(Colors.white),
              enabledBorder: border(Colors.white60),
              suffixIcon: GestureDetector(
                onTap: () {
                  widget.searchController!.text = "";
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _renderDefaultAppBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.showBackButton == true
            ? _backButton(widget.onPressBack)
            : _openDrawerButton(context),
        Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
            ),
          ),
        ),
        widget.trailing != null
            ? IconButton(
                icon: Icon(
                  widget.trailing!.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: widget.trailing!.icon == Icons.search
                    ? _toggleSearch
                    : widget.trailing?.onPressed,
              )
            : const SizedBox(
                width: 35.5,
              ),
      ],
    );
  }

  Widget _backButton([void Function()? onPressed]) {
    return IconButton(
      onPressed: onPressed ?? () => Navigator.pop(context),
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.white,
      ),
    );
  }

  Widget _openDrawerButton(context) {
    return TextButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      child: SvgPicture.asset(
        'assets/SVG/menu.svg',
        color: Colors.white,
        width: 35.0,
      ),
    );
  }
}
