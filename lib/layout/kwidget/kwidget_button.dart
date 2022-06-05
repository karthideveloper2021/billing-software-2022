import 'package:flutter/material.dart';

class Kbutton extends StatefulWidget {
  String? Ktext;
  FontWeight KfontWeight;
  Color? KtextColor;
  Color? KbackgroundColor;
  Color? KhoverBackgroundColor;
  Color? KhoverTextColor;
  void Function()? KonTap;
  double Kwidth;
  double Kheight;
  Gradient? Kgradient;
  BorderRadius? KborderRadius;
  Kbutton({
    Key? key,
    this.Ktext,
    this.KtextColor,
    this.KbackgroundColor,
    this.KonTap,
    this.KfontWeight = FontWeight.w300,
    this.Kwidth = 100,
    this.Kheight = 100,
    this.Kgradient,
    this.KhoverBackgroundColor,
    this.KhoverTextColor,
    this.KborderRadius,
  }) : super(key: key);

  @override
  State<Kbutton> createState() => _KbuttonState();
}

class _KbuttonState extends State<Kbutton> {
  @override
  void initState() {
    super.initState();
  }

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => setState(() {
        isHover = true;
      }),
      onExit: (event) => setState(() {
        isHover = false;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.KonTap,
        child: SizedBox(
          width: widget.Kwidth,
          height: widget.Kheight,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: widget.Kgradient,
                  color: widget.KbackgroundColor,
                  borderRadius: widget.KborderRadius,
                  boxShadow: isHover
                      ? [
                          BoxShadow(
                              offset: Offset.fromDirection(90, 3.0),
                              color: const Color.fromARGB(81, 55, 32, 30),
                              spreadRadius: 2.0,
                              blurRadius: 2.0)
                        ]
                      : [],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: isHover
                      ? widget.KhoverBackgroundColor
                      : Colors.transparent,
                  borderRadius: widget.KborderRadius,
                ),
              ),
              Center(
                child: Text(
                  "${widget.Ktext}",
                  style: TextStyle(
                    color: isHover ? widget.KhoverTextColor : widget.KtextColor,
                    backgroundColor: Colors.transparent,
                    fontWeight: widget.KfontWeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
